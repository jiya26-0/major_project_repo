import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String result;

  const ResultPage(this.result, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Your Result"),
        backgroundColor: Color(0xFF027E6D),
        elevation: 0,
      ),
      body: Stack(
        children: [
          // 🖼️ Background doctor image with low opacity
          Positioned.fill(
            child: Opacity(
              opacity: 0.1, // Low opacity
              child: Image.asset(
                "assets/images/doctor.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 🎨 Optional Gradient Overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.teal.shade50.withOpacity(0.3),
                    Colors.white.withOpacity(0.3),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),

          // 📋 Main content
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Card(
                elevation: 10,
                shadowColor: Colors.tealAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white.withOpacity(0.95),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.health_and_safety_rounded,
                        size: 60,
                        color: Color(0xFF027E6D),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Precaution Advice",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Colors.teal.shade800,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        result,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
