import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sharedpref/main.dart';

void main() {
  runApp(splashscreen());
}

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage(title: "login")),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            // gradient: RadialGradient(colors:[ Color(0xff96fbc4),Color(0xfff9f586)],
            // center: Alignment.center,stops: [0.0,1.0])
            image: DecorationImage(
          image: AssetImage('assets/Images/Module2.jpg'),
          fit: BoxFit.fill,
        )),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(600.0),
            child: Container(
              color: Colors.transparent,
              child: Image.asset(
                'assets/Images/KSOLVES.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
