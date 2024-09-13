import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:panggil_montir_app/domain/entities/direction.dart';
import 'package:panggil_montir_app/presentation/blocs/order_darurat/order_darurat_bloc.dart';
import 'package:panggil_montir_app/presentation/extension/values.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({super.key});

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  late GoogleMapController mapController;
  final Set<Marker> markers = {};
  final Set<Polyline> polylines = <Polyline>{};
  final Location location = Location();
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;
  String? userAddress;
  String? montirAddress;
  Map<String, String> addressMap = {
    'userLatitude': '',
    'userLongitude': '',
    'montirLatitude': '',
    'montirLongitude': '',
  };

  @override
  void initState() {
    super.initState();

    final orderState = context.read<OrderDaruratBloc>().state;

    orderState.maybeWhen(
      orElse: () => 'No data',
      success: (data) => {
        addressMap['userLatitude'] = data.latitude!,
        addressMap['userLongitude'] = data.longitude!,
        addressMap['montirLatitude'] = data.montir!.latitude!,
        addressMap['montirLongitude'] = data.montir!.longitude!,
      },
    );

    Future.microtask(() async {
      addCustomIcon();
      await setupLocation();
      setInitialMarkers();
      await setPolylines(
        LatLng(double.parse(addressMap['montirLatitude']!),
            double.parse(addressMap['montirLongitude']!)),
        LatLng(double.parse(addressMap['userLatitude']!),
            double.parse(addressMap['userLongitude']!)),
      );
      setState(() {});
    });
  }

  Future<void> setupLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        debugPrint('location service is not available');
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted == PermissionStatus.denied) {
        debugPrint('Location permission is denied');
        return;
      }
    }
  }

  Future<String> getAddressFromLatLong(double lat, double lng) async {
    try {
      List<geo.Placemark> placemarks =
          await geo.placemarkFromCoordinates(lat, lng);
      geo.Placemark place = placemarks[0];
      return "${place.street}, ${place.subLocality}, ${place.locality}, ${place.subAdministrativeArea}, ${place.administrativeArea}";
    } catch (e) {
      debugPrint('Failed to get address: $e');
      return 'Failed to get address: $e';
    }
  }

  void addCustomIcon() {
    BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(32, 32)),
      'assets/icons/icon-location-montir.png',
    ).then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  void setInitialMarkers() {
    setState(() {
      markers.add(Marker(
        markerId: const MarkerId('source'),
        position: LatLng(double.parse(addressMap['montirLatitude']!),
            double.parse(addressMap['montirLongitude']!)),
        icon: markerIcon,
      ));
      markers.add(Marker(
        markerId: const MarkerId('destination'),
        position: LatLng(double.parse(addressMap['userLatitude']!),
            double.parse(addressMap['userLongitude']!)),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      ));
    });
  }

  Future<void> setPolylines(LatLng origin, LatLng destination) async {
    final result = await Direction.getDirections(
      googleMapsApiKey: apiKeyGmaps,
      origin: origin,
      destination: destination,
    );

    final polylineCoordinates = <LatLng>[];
    if (result != null && result.polylinePoints.isNotEmpty) {
      polylineCoordinates.addAll(result.polylinePoints);
    }

    final polyline = Polyline(
      polylineId: const PolylineId('default-polyline'),
      color: blueColor,
      width: 6,
      points: polylineCoordinates,
    );

    setState(() {
      polylines.add(polyline);
    });

    mapController.animateCamera(
      CameraUpdate.newLatLngBounds(result!.bounds, 100),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      markers.clear();
      setInitialMarkers();
    });
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(double.parse(addressMap['montirLatitude']!),
              double.parse(addressMap['montirLongitude']!)),
          zoom: 8,
        ),
        markers: markers,
        zoomControlsEnabled: false,
        mapToolbarEnabled: false,
        myLocationButtonEnabled: false,
        polylines: polylines,
        onMapCreated: _onMapCreated,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25.0)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey[400]!,
              width: 0.3,
            ),
            boxShadow: [
              BoxShadow(
                color: blackColor,
                blurRadius: 4.0,
                offset: const Offset(2, -2),
              ),
            ],
          ),
          child: BlocConsumer<OrderDaruratBloc, OrderDaruratState>(
            listener: (context, state) {
              state.maybeWhen(
                initial: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                failure: (message) => showCustomSnackbar(context, message),
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Text("No data"),
                success: (data) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      verticalSpace(4),
                      Text(
                        "Montir ditemukan",
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      verticalSpace(6),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data.montir!.licencePlate.toString(),
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                  ),
                                ),
                                Text(
                                  data.montir!.name!,
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                  ),
                                ),
                                verticalSpace(6),
                                Row(
                                  children: [
                                    Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        color: orangeColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.phone,
                                        color: whiteColor,
                                        size: 18,
                                      ),
                                    ),
                                    horizontalSpace(12),
                                    Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        color: orangeColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.chat,
                                        color: whiteColor,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                width: 68,
                                height: 68,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border:
                                      Border.all(color: greyColor, width: 0.2),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/img_montir.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(2),
                      Divider(
                        color: greyColor,
                        thickness: 0.5,
                      ),
                      verticalSpace(4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Estimasi Biaya",
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            verticalSpace(4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Service ${data.issue}',
                                  style: blackTextStyle,
                                ),
                                Text(
                                  formatCurrency(data.serviceFee!),
                                  style: blackTextStyle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Biaya perjalanan',
                                  style: blackTextStyle,
                                ),
                                Text(
                                  formatCurrency(data.deliveryFee!),
                                  style: blackTextStyle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Biaya jasa aplikasi',
                                  style: blackTextStyle,
                                ),
                                Text(
                                  formatCurrency(data.applicationFee!),
                                  style: blackTextStyle,
                                ),
                              ],
                            ),
                            verticalSpace(4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                  ),
                                ),
                                Text(
                                  formatCurrency(data.serviceFee! +
                                      data.deliveryFee! +
                                      data.applicationFee!),
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(12),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 6),
                            child: SizedBox(
                              height: 42,
                              width: (MediaQuery.of(context).size.width - 45) *
                                  (2 / 3),
                              child: ElevatedButton(
                                onPressed: () async {},
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: whiteColor,
                                  backgroundColor: orangeColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: Text(
                                  'Lanjutkan pesanan',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6, right: 8),
                            child: SizedBox(
                              height: 42,
                              width: (MediaQuery.of(context).size.width - 45) *
                                  (1 / 3),
                              child: ElevatedButton(
                                onPressed: () {
                                  context.read<OrderDaruratBloc>().add(
                                        OrderDaruratEvent.cancelOrder(
                                          data.code!,
                                        ),
                                      );
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: whiteColor,
                                  backgroundColor: whiteColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    side: const BorderSide(
                                      color: Colors.red,
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Batalkan',
                                  style: redTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(8),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
