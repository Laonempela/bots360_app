import 'package:flutter/material.dart';
import '../widgets/reusable_widget.dart';
import '../utils/color_utils.dart';
import 'package:bots360_app/screens/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  String role = 'user';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
        "Sign Up",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
    ),
        body: Container(
        width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
    gradient: LinearGradient(colors: [
    hexStringToColor("CB2B93"),
    hexStringToColor("9546C4"),
    hexStringToColor("5E61F4")
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    child: SingleChildScrollView(
    child: Padding(
    padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
    child: Column(
    children: <Widget>[
    const SizedBox(
    height: 20,
    ),
    reusableTextField("Enter UserName", Icons.person_outline, false,
    _userNameTextController),
    const SizedBox(
    height: 20,
    ),
    reusableTextField("Enter Email Id", Icons.person_outline, false,
    _emailTextController),
    const SizedBox(
    height: 20,
    ),
    reusableTextField("Enter Password", Icons.lock_outlined, true,
    _passwordTextController),
    const SizedBox(
    height: 20,
    ),
    signInSignUpButton(context, false, (){
      FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailTextController.text,
          password: _passwordTextController.text)
          .then((value) async{
            User? user = FirebaseAuth.instance.currentUser;
            await FirebaseFirestore.instance.collection('users')?.doc(value.user!.uid).set({
              'uid': value.user!.uid,
              'email': _emailTextController.text,
              'username': _userNameTextController.text,
              'role': role,
            });

            print("Created New Account");
        Navigator.push(context,
            MaterialPageRoute(builder: (context)=>const Home()));
      }).onError((error, stackTrace) {
        print("Error ${error.toString()}");
      });
    })
    ],
    ),
    ))),
    );
  }
}
