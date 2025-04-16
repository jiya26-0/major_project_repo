import 'package:flutter/material.dart';
import 'dart:async';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 👨‍⚕️ Full screen doctor image background
          Positioned.fill(
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                "assets/images/doctor.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 🏥 Center content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/ambulance-gif.gif",
                  height: 150,
                ),
                SizedBox(height: 30),
                Text(
                  "Stay Safe-Stay Healthy",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.teal.shade700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
