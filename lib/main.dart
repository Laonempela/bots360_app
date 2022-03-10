import 'package:flutter/material.dart';
import 'package:bots360_app/pages/home_page.dart';
import 'package:bots360_app/pages/gallery.dart';
import 'package:bots360_app/pages/signin.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: const FirebaseOptions(
      apiKey: "AIzaSyAqdLU_FvHuBGPH4Lx-c0_1ui_yQvkNGaU", // Your apiKey
      appId: "1:884262208252:android:06e0c420c7bbdcc2498d79", // Your appId
      messagingSenderId: "884262208252", // Your messagingSenderId
      projectId: "bots360", // Your projectId
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bots360',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignIn(),
    );
  }
}
class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
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



