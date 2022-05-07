import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../screens/location_screen.dart';


class LocationsMap extends StatefulWidget {
  const LocationsMap({Key? key}) : super(key: key);

  @override
  State<LocationsMap> createState() => _LocationsMapState();
}

class _LocationsMapState extends State<LocationsMap> {
  late GoogleMapController controller;
  late String markerroute;

  Map <MarkerId, Marker> markers = <MarkerId, Marker>{};


  void initMarker(specify, specifyId) async{
    if (kDebugMode) {
      print("Specify: $specify");
    }
    var markerIdVal = specifyId;
    final MarkerId markerId = MarkerId(markerIdVal);
    final Marker marker = Marker(
        markerId: markerId,
        position: LatLng(specify['location'].latitude, specify['location'].longitude),
        infoWindow: InfoWindow(
            title: 'activity',
            snippet: specify['address'],
          onTap: () { Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>  LocationScreen(markerroute : markerroute),));},
        ),

    );

    setState(() {
      markers[markerId] = marker;
    });
  }

  getMarkerData() async {
    FirebaseFirestore.instance.collection('map').get().then((myMapData){
      if(myMapData.docs.isNotEmpty){
        for(int i=0; i<myMapData.docs.length; i++){
          if (kDebugMode) {
            print(myMapData.docs[i].data().toString());

          }
          initMarker(
              myMapData.docs[i].data(), myMapData.docs[i].id);
          markerroute= myMapData.docs[i].id;
        }
      }
    });
  }

  @override
  void initState(){
    getMarkerData();
    super.initState();
  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: GoogleMap(

        markers: Set<Marker>.of(markers.values),
        mapType: MapType.hybrid,
        initialCameraPosition: const CameraPosition(
          target: LatLng(-22.542256725039802, 23.637567114517708),
          zoom: 6.0,),
        onMapCreated: (GoogleMapController controller){
          controller = controller;
        },
      ),
    );
  }
}
/*
Set<Marker> getMarker() {
  return <Marker> {
    const Marker(
        markerId: MarkerId('Bird Watching'),
        position: LatLng(-24.659376508091096, 25.93089727824914),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: 'bird watching activity')
    )
  };
}
 */