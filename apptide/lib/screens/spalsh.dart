

import 'package:apptide/screens/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).whenComplete(() async {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Container(child: Center(child: Image(image: AssetImage('assets/splash.png'),),),)
    );
  }
}
