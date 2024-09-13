import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:location/location.dart';
import 'package:panggil_montir_app/data/dto/address_create_model.dart';
import 'package:panggil_montir_app/presentation/blocs/address/address_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/garage/garage_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/detail_bengkel/detail_bengkel.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/list_bengkel/list_bengkel_skeleton.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/list_bengkel/methods/bengkel_item.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/list_bengkel/methods/bottom_loader.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListBengkel extends StatefulWidget {
  const ListBengkel({super.key});

  @override
  State<ListBengkel> createState() => _ListBengkelState();
}

class _ListBengkelState extends State<ListBengkel> {
  double? latitude;
  double? longitude;
  String? currentAddress;
  final List<String> promotionsImageFileNames = const [
    'https://i.ytimg.com/vi/sN-Cjxt3C70/maxresdefault.jpg',
    'https://i.ytimg.com/vi/4_CS4ivAGGM/maxresdefault.jpg',
    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjIRdaZYsH8W1TkLKkGCLUBWX_bSilAbaAL4qmw6kXT4OTpz059WjHH67mBCp1vIMniHGaSCmykOja_HU_0TWndyaqDfQCWAOm_q_YenjV1Rm9QmQfARpo2bg-7UZL6YoZ7rDv5S5mvqc8GzMIGRwtLOyvkGmsITOCg5c9ewXKk79o4tJT_KGOeloRrgQ/w1200-h630-p-k-no-nu/BANNER%20MOTOR%20a.jpg'
  ];

  Future<void> getCurrentPosition() async {
    try {
      Location location = Location();

      bool serviceEnabled;
      PermissionStatus permissionGranted;
      LocationData locationData;

      serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          return;
        }
      }

      permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          return;
        }
      }

      locationData = await location.getLocation();
      latitude = locationData.latitude;
      longitude = locationData.longitude;

      if (latitude != null && longitude != null) {
        await getAddressFromLatLng(latitude!, longitude!);
      }

      setState(() {});
    } on PlatformException catch (e) {
      if (e.code == 'IO_ERROR') {
        debugPrint(
            'A network error occurred trying to lookup the supplied coordinates: ${e.message}');
      } else {
        debugPrint('Failed to lookup coordinates: ${e.message}');
      }
    } catch (e) {
      debugPrint('An unknown error occurred: $e');
    }
  }

  Future<void> getAddressFromLatLng(double lat, double lng) async {
    try {
      List<geo.Placemark> placemarks =
          await geo.placemarkFromCoordinates(lat, lng);
      geo.Placemark place = placemarks[0];
      currentAddress =
          "${place.street}, ${place.subLocality}, ${place.locality}, ${place.subAdministrativeArea}, ${place.administrativeArea}, ${place.country}, ${place.postalCode}";
    } catch (e) {
      debugPrint('Failed to get address: $e');
    }
  }

  final _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      await getCurrentPosition();
      // ignore: use_build_context_synchronously
      context.read<AddressBloc>().add(
            AddressEvent.getCurentAddress(
              AddressCreateModel(
                description: currentAddress,
                latitude: latitude.toString(),
                longitude: longitude.toString(),
              ),
            ),
          );
      // ignore: use_build_context_synchronously
      context.read<GarageBloc>().add(const GarageEvent.garageFetched());
      // ignore: use_build_context_synchronously
      context.read<GarageBloc>().add(
          GarageEvent.getGarages(latitude.toString(), longitude.toString()));
      setState(() {});
    });
    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    if (_controller.position.pixels == _controller.position.maxScrollExtent) {
      context.read<GarageBloc>().add(const GarageEvent.garageRefresh());
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: currentAddress == null
            ? const ListBengkelSkeleton()
            : RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<GarageBloc>()
                      .add(const GarageEvent.garageRefresh());
                },
                child: BlocConsumer<GarageBloc, GarageState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () => const Center(
                        child: Text('No data'),
                      ),
                      failure: (message) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message),
                            backgroundColor: Colors.red,
                          ),
                        );
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const Center(
                          child: Text('No data'),
                        );
                      },
                      loading: () {
                        return const ListBengkelSkeleton();
                      },
                      success: (data, hasReachedMax) {
                        return CustomScrollView(
                          controller: _controller,
                          slivers: [
                            SliverToBoxAdapter(
                              child: Stack(
                                children: [
                                  CarouselSlider.builder(
                                    itemCount: promotionsImageFileNames.length,
                                    itemBuilder: (BuildContext context,
                                            int itemIndex, int pageViewIndex) =>
                                        Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.network(
                                          promotionsImageFileNames[itemIndex],
                                          width: double.infinity,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    options: CarouselOptions(
                                      height: 200,
                                      autoPlay: true,
                                      enlargeCenterPage: false,
                                      viewportFraction: 1,
                                      aspectRatio: 2.0,
                                      initialPage: 2,
                                      autoPlayInterval:
                                          const Duration(seconds: 4),
                                    ),
                                  ),
                                  Positioned(
                                    top: 12.0,
                                    left: 16.0,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 4.0,
                                            offset: Offset(2, 2),
                                          ),
                                        ],
                                      ),
                                      child: IconButton(
                                        icon: const Icon(
                                          Icons.arrow_back,
                                          color: Colors.black,
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SliverStickyHeader(
                              header: Material(
                                elevation: 2.0,
                                shadowColor: Colors.black54,
                                child: BlocConsumer<AddressBloc, AddressState>(
                                  listener: (context, state) {
                                    // TODO: implement listener
                                  },
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      orElse: () {
                                        return const Text('No data');
                                      },
                                      loading: () {
                                        return Skeletonizer(
                                          child: Container(
                                            height: 52.0,
                                            color: whiteColor,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12.0),
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  color: blueColor,
                                                ),
                                                horizontalSpace(12),
                                                Expanded(
                                                  child: Text(
                                                    'Lokasi Saya : Jl. Kebon Jeruk No. 12, Kebon Jeruk.',
                                                    style:
                                                        blackTextStyle.copyWith(
                                                      fontWeight: medium,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      failure: (message) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(message),
                                            backgroundColor: Colors.red,
                                          ),
                                        );
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      },
                                      success: (data) {
                                        return Container(
                                          height: 52.0,
                                          color: whiteColor,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: blueColor,
                                              ),
                                              horizontalSpace(4),
                                              Expanded(
                                                child: Text(
                                                  'Lokasi Saya : ${data.description}',
                                                  style:
                                                      blackTextStyle.copyWith(
                                                    fontWeight: medium,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color: blueColor,
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              sliver: SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (context, i) {
                                    if (i >= data.length) {
                                      return const BottomLoader();
                                    }
                                    return bengkelItem(
                                      data[i].name!,
                                      data[i].address!,
                                      data[i].distance!,
                                      data[i].startPrice!,
                                      promotionsImageFileNames[0],
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetailBengkel(
                                              garage: data[i],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  childCount: hasReachedMax
                                      ? data.length
                                      : data.length + 1,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
      ),
    );
  }
}
