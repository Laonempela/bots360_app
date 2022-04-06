import 'package:flutter/material.dart';
import 'package:bots360_app/pages/map.dart';
import 'package:bots360_app/pages/gallery.dart';
import 'act/travelinfo.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
int currentIndex = 0;
final screens = [
  const Map(),
  const Gallery(),
  const Travel(),

];
  @override
  Widget build(BuildContext context) => Scaffold(

        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          unselectedItemColor: Colors.white70,
          selectedItemColor: Colors.white,
          iconSize: 20,
          selectedFontSize: 25,
          unselectedFontSize: 14,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex =index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.location_on),
                label:'Explore',
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard),
                label:'Gallery',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(icon: Icon(Icons.travel_explore),
                label:'Travel Info',
                backgroundColor: Colors.red
            )

          ],
        )
    );

  }

