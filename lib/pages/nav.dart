import 'package:flutter/material.dart';
import 'package:bots360_app/pages/home_page.dart';
import 'package:bots360_app/pages/gallery.dart';
class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentIndex = 0;
  final screens =[
    const Home(),
    const Gallery(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bots 360 tourism'),
          centerTitle: true,
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          currentIndex: currentIndex,
          unselectedItemColor: Colors.white70,
          selectedItemColor: Colors.white,
          iconSize: 20,
          selectedFontSize: 20,
          unselectedFontSize: 16,
          onTap: (index) => setState(() => currentIndex =index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.location_on),
                label:'Explore',
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard),
                label:'Gallery',
                backgroundColor: Colors.green
            )
          ],

        )
    );
  }
}



