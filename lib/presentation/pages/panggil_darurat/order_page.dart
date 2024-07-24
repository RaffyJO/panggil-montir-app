import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:panggil_montir_app/domain/entities/order.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_darurat/find_montir_page.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_darurat/methods/kendala_item.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  late final TextEditingController addressController;
  final TextEditingController notesController = TextEditingController();
  late GoogleMapController mapController;
  double? latitude;
  double? longitude;
  String? destinationAddress;
  LatLng? selectedLocation;

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
      destinationAddress =
          "${place.street}, ${place.subLocality}, ${place.locality}, ${place.subAdministrativeArea}, ${place.administrativeArea}, ${place.country}, ${place.postalCode}";
      addressController.text = destinationAddress!;
    } catch (e) {
      debugPrint('Failed to get address: $e');
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _onTap(LatLng position) async {
    setState(() {
      selectedLocation = position;
      latitude = position.latitude;
      longitude = position.longitude;
    });
    List<geo.Placemark> placemarks = await geo.placemarkFromCoordinates(
        position.latitude, position.longitude);
    geo.Placemark place = placemarks[0];
    if (placemarks.isNotEmpty) {
      setState(() {
        destinationAddress =
            "${place.name}, ${place.street}, ${place.locality}, ${place.postalCode}, ${place.country}";
        addressController.text = destinationAddress!;
      });
    }
  }

  @override
  void initState() {
    addressController = TextEditingController();
    getCurrentPosition();
    super.initState();
  }

  @override
  void dispose() {
    notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    LatLng center = LatLng(latitude ?? 0, longitude ?? 0);
    Marker marker = Marker(
      markerId: const MarkerId('marker_1'),
      position: LatLng(latitude ?? 0, longitude ?? 0),
      draggable: true,
      onDragEnd: (newPosition) {
        _onTap(newPosition);
      },
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          SizedBox(
            child: latitude == null
                ? Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: CircularProgressIndicator(
                        color: orangeColor,
                      ),
                    ),
                  )
                : GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: center,
                      zoom: 18.0,
                    ),
                    markers: selectedLocation != null
                        ? {
                            Marker(
                              markerId: const MarkerId("selected_location"),
                              position: selectedLocation!,
                            ),
                          }
                        : {marker},
                    onTap: _onTap,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 38.0, 0, 0),
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
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                verticalSpace(12.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.location_pin, color: blueColor),
                      horizontalSpace(8.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lokasi anda",
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            verticalSpace(3),
                            Text(
                              destinationAddress ?? 'Alamat tidak tersedia',
                              maxLines: 3,
                              style: blackTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.question_answer_rounded,
                            color: blueColor,
                          ),
                          horizontalSpace(8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Apa yang perlu kami bantu?",
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                  ),
                                ),
                                verticalSpace(8),
                                Container(
                                  color: whiteColor,
                                  width: MediaQuery.of(context).size.width,
                                  height: 30,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      KendalaItem(
                                        id: 1,
                                        title: "Mogok",
                                        price: 250000,
                                      ),
                                      horizontalSpace(8),
                                      KendalaItem(
                                        id: 2,
                                        title: "Ban Bocor",
                                        price: 200000,
                                      ),
                                      horizontalSpace(8),
                                      KendalaItem(
                                        id: 3,
                                        title: "Rem Blong",
                                        price: 300000,
                                      ),
                                      horizontalSpace(8),
                                      KendalaItem(
                                        id: 4,
                                        title: "Lainnya",
                                        price: 0,
                                      ),
                                    ],
                                  ),
                                ),
                                verticalSpace(10),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        backgroundColor: whiteColor,
                                        insetPadding: EdgeInsets.zero,
                                        alignment: Alignment.bottomCenter,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                        ),
                                        title: Text(
                                          'Detail Kendala',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semiBold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        content: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 160,
                                          decoration: BoxDecoration(
                                            color: whiteColor,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Column(
                                            children: [
                                              TextField(
                                                controller: notesController,
                                                autofocus: true,
                                                maxLines: 5,
                                                onChanged: (value) {
                                                  setState(() {});
                                                },
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText:
                                                      'Cth: Terkena paku di depan minimarket',
                                                  hintStyle: greyTextStyle,
                                                ),
                                                keyboardType:
                                                    TextInputType.text,
                                                textInputAction:
                                                    TextInputAction.none,
                                              ),
                                            ],
                                          ),
                                        ),
                                        actions: [
                                          SizedBox(
                                            height: 30,
                                            width: 100,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: whiteColor,
                                                backgroundColor: orangeColor,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                              ),
                                              child: Text(
                                                'Simpan',
                                                style: blackTextStyle.copyWith(
                                                  fontSize: 13,
                                                  fontWeight: semiBold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: Colors.grey[300]!,
                                        width: 1,
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.note_alt_sharp,
                                          size: 18,
                                          color: blueColor,
                                        ),
                                        horizontalSpace(2),
                                        Text(
                                          "Detail kendala",
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semiBold,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                verticalSpace(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                    height: 42,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FindMontirPage(
                              order: Order(
                                address: destinationAddress!,
                                latitude: latitude.toString(),
                                longitude: longitude.toString(),
                                notes: notesController.text,
                              ),
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: whiteColor,
                        backgroundColor: orangeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        'Cari montir terdekat',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                ),
                verticalSpace(10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
