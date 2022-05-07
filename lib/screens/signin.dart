import 'package:bots360_app/utils/color_utils.dart';
import 'package:flutter/material.dart';
import '../widgets/reusable_widget.dart';
import 'package:bots360_app/screens/SignUpScreen.dart';
import 'package:bots360_app/screens/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'admin/admin_screen.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       decoration: BoxDecoration(gradient: LinearGradient(colors: [
     hexStringToColor("CB2893"),
       hexStringToColor("9546C4"),
       hexStringToColor("5E61F4"),
     ], begin: Alignment.topCenter,end: Alignment.bottomCenter)),
       child: SingleChildScrollView(child: Padding(padding: EdgeInsets.fromLTRB(20,
       MediaQuery.of(context).size.height * 0.2,20, 0),
        child: Column(
          children: <Widget>[
            logoWidget("assets/images/logo2.png"),
          const SizedBox(
            height: 30,
          ),
            reusableTextField("Enter UserName", Icons.person_outline, false,
                _emailTextController),
            const SizedBox(
              height: 20
            ),
            reusableTextField("Enter Password", Icons.lock_outlined, true,
                _passwordTextController),
            const SizedBox(
                height: 20
            ),
            signInSignUpButton(context, true, (){
    FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).
    then((value) {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const Home()));
    }).onError((error, stackTrace) {
      print("Error ${error.toString()}");
          });
            }),
            signUpOption()
          ],
        ),
       ),
       ),
     ),

    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

}
