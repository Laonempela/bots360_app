import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,
    );
  }
}
