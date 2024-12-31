import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../core/presentation/shared_widgets/custom_textfield.dart';
import '../../../../../core/styles/colors.dart';

const String googleApiKey =
    'AIzaSyBVW6NaFHWs3P5JOpJwAD7J_bazn9DzjR0'; // Replace with your API key

class GoogleMapDriverScreen extends StatefulWidget {
  const GoogleMapDriverScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapDriverScreen> createState() => _GoogleMapDriverScreenState();
}

class _GoogleMapDriverScreenState extends State<GoogleMapDriverScreen> {
  final TextEditingController _searchController = TextEditingController();
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  final Set<Marker> _markers = {};
  Position? _currentPosition;
  String _locationData = '';

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        await Geolocator.requestPermission();
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission != LocationPermission.whileInUse &&
            permission != LocationPermission.always) {
          return;
        }
      }

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        _currentPosition = position;
        _markers.add(Marker(
          markerId: MarkerId('current_location'),
          position: LatLng(position.latitude, position.longitude),
          infoWindow: InfoWindow(title: 'Your Location'),
        ));
      });

      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newLatLngZoom(
        LatLng(position.latitude, position.longitude),
        14.0,
      ));

      _locationData = _formatLocationData(position);
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  String _formatLocationData(Position position) {
    return 'Latitude: ${position.latitude}\n'
        'Longitude: ${position.longitude}\n'
        'Accuracy: ${position.accuracy}\n'
        'Altitude: ${position.altitude}\n'
        'Speed: ${position.speed}\n'
        'Timestamp: ${position.timestamp}';
  }

  @override
  Widget build(BuildContext context) {
    const CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(29.3759, 47.9774),
      zoom: 14.4746,
    );

    return Scaffold(
        backgroundColor: ColorManager.backGround,
        body: Stack(
          children: [
        Positioned.fill(
        child: _currentPosition == null
          ? const Center(
          child: CircularProgressIndicator(
          color: ColorManager.lightGreen,
        ))
        : GoogleMap(
    mapType: MapType.normal,
    markers: _markers,
    onMapCreated: (GoogleMapController controller) {
    _controller.complete(controller);
    },
    initialCameraPosition: _kGooglePlex,
    ),
    ),
    Positioned(
    top: 60.h,
    left: 15.0,
    right: 15.0,
    child: formField(
    controller: _searchController,
    titleField: 'Search',
    icon: Icons.search,
    enumData: fieldType.search,
    reload: (void Function()) {}),
    ),
    ],
    ),
    );
  }
}
