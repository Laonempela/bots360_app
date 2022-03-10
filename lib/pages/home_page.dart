import 'package:bots360_app/pages/fishing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:bots360_app/pages/boatcruise.dart';
import 'package:bots360_app/pages/birdwatching.dart';

import 'nav.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bots 360 tourism'),
        centerTitle: true,
      ),
      body: Stack(children: <Widget>[
        FlutterMap(options: MapOptions(maxZoom: 6.0,
            center:  LatLng(-21.759, 24.214)),
            layers: [TileLayerOptions(urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a','b','c']),
              MarkerLayerOptions(markers: [Marker(width: 45.0,height: 45.0,
                point: LatLng(-24.66215, 25.93275),
                builder: (context)=>IconButton(icon: const Icon(Icons.location_on),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>VideoDemo(),));
                }),
              ),
              ]

              ),
              MarkerLayerOptions(markers: [Marker(width: 45.0,height: 45.0,
                point: LatLng(-21.66215, 25.93275),
                builder: (context)=>IconButton(icon: const Icon(Icons.location_on),
                    onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>const GameDrive(),));
                    }),
              ),
              ]

              ),
              MarkerLayerOptions(markers: [Marker(width: 45.0,height: 45.0,
                point: LatLng(-20.66215, 25.93275),
                builder: (context)=>IconButton(icon: const Icon(Icons.location_on),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=> VideoDemo1(),));
                }),
              ),
              ]

              ),

            ]
        )

      ],


      ),);

  }
}
