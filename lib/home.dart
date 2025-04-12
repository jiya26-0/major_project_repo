import 'package:flutter/material.dart';
import 'signUp.dart'; // make sure this file exists and contains a `SignUp` widget

class Home extends StatelessWidget {
  final ValueNotifier<bool> _dark = ValueNotifier<bool>(true);
  final ValueNotifier<double> _widthFactor = ValueNotifier<double>(1.0);

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ValueListenableBuilder<bool>(
          valueListenable: _dark,
          builder: (context, color, child) {
            return ValueListenableBuilder<double>(
              valueListenable: _widthFactor,
              builder: (context, factor, child) {
                return SafeArea(
                  child: Scaffold(
                    backgroundColor: _dark.value ? Colors.black : Colors.white,
                    body: SafeArea(
                      child: SingleChildScrollView(
                        child: Center(
                          child: Container(
                            width:
                            MediaQuery.of(context).size.width * _widthFactor.value,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [GettingStarted()],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class GettingStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 428,
            height: 926,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 40,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 428,
                    height: 428,
                    decoration: ShapeDecoration(
                      gradient: const RadialGradient(
                        center: Alignment(-0.11, 0.91),
                        radius: 0,
                        colors: [Color(0xFF73F0D3), Color(0xFF37B597)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 78,
                  child: Container(
                    width: 428,
                    height: 853,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 428,
                            height: 853,
                            decoration: ShapeDecoration(
                              color: Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(38),
                                  bottomRight: Radius.circular(38),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: -100,
                          top: 0,
                          child: Container(
                            width: 647,
                            height: 1001,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [
                                  Color(0x3F5ED2B7),
                                  Color(0xFF81D7C3),
                                  Color(0xFF7CDFC7),
                                ],
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 32,
                  top: 536,
                  child: Container(
                    width: 364,
                    height: 363,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 364,
                            height: 363,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [
                                  Colors.white.withOpacity(0.5699999928474426),
                                  Colors.white.withOpacity(0.4300000071525574),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(38),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 136,
                          top: 26,
                          child: Container(
                            width: 90.25,
                            height: 5,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 32,
                          top: 56,
                          child: SizedBox(
                            width: 298.82,
                            child: Text(
                              'Are you ready for a health checkup?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF00906D),
                                fontSize: 32,
                                fontFamily: 'Work Sans',
                                height: 0,
                              ),
                            ),
                          ),
                        ),

                        // 👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇
                        // 🎯 Get Started Button Wrapped with GestureDetector
                        Positioned(
                          left: 44,
                          top: 263,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => signup()),
                              );
                            },
                            child: Container(
                              width: 275.76,
                              height: 61,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 16,
                              ),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF5FAF9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(48),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x6B5ED2B7),
                                    blurRadius: 20,
                                    offset: Offset(0, 0),
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Get Started',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF00906D),
                                      fontSize: 25,
                                      fontFamily: 'Work Sans',
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // ☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️

                        Positioned(
                          left: 35,
                          top: 163,
                          child: SizedBox(
                            width: 292.80,
                            height: 46,
                            child: Text(
                              'Improving your life by checking all your cells ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF002A20),
                                fontSize: 18,
                                fontFamily: 'Work Sans',
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 55,
                  top: 156,
                  child: Container(
                    width: 307,
                    height: 307,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/First Aid.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 285,
                  top: 23,
                  child: Container(
                    width: 200,
                    height: 213,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/heart.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -38,
                  top: 406,
                  child: Container(
                    width: 141,
                    height: 134,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Thermometer.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 333.59,
                  top: 428,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(0.27),
                    child: Container(
                      width: 179,
                      height: 183,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Stetoscope.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -45,
                  top: 54,
                  child: Container(
                    width: 143,
                    height: 189,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/medicalRecord.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
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
