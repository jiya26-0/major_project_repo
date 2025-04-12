import 'package:flutter/material.dart';

import 'home.dart';

// void main() {
//   runApp(const HealthCheckupApp());
// }
//
// class HealthCheckupApp extends StatelessWidget {
//   const HealthCheckupApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Health Checkup',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//         fontFamily: 'Roboto',
//       ),
//       home: const HealthCheckupScreen(),
//     );
//   }
// }
//
// class HealthCheckupScreen extends StatelessWidget {
//   const HealthCheckupScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF0DBB8E),
//       body: SafeArea(
//         child: Center(
//           child: Container(
//             margin: const EdgeInsets.symmetric(horizontal: 32),
//             child: Stack(
//               alignment: Alignment.center,
//               children: [
//                 // Main card background
//                 Container(
//                   height: 500,
//                   decoration: BoxDecoration(
//                     color: const Color(0xFF24D59D).withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(24),
//                   ),
//                 ),
//
//                 // White circles/lines decoration
//                 CustomPaint(
//                   size: const Size(300, 300),
//                   painter: CircleDecorationPainter(),
//                 ),
//
//                 // Main content
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     // Space for floating images
//                     const SizedBox(height: 220),
//
//                     // First aid kit image
//                     Container(
//                       width: 120,
//                       height: 120,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(16),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 10,
//                             offset: const Offset(0, 4),
//                           ),
//                         ],
//                       ),
//                       child: Center(
//                         child: Stack(
//                           alignment: Alignment.center,
//                           children: [
//                             Container(
//                               width: 80,
//                               height: 80,
//                               decoration: const BoxDecoration(
//                                 color: Color(0xFFFF6B6B),
//                                 shape: BoxShape.circle,
//                               ),
//                             ),
//                             const Icon(
//                               Icons.add,
//                               color: Colors.white,
//                               size: 40,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     const SizedBox(height: 32),
//
//                     // Text content
//                     const Text(
//                       'Are you ready for a\nhealth checkup?',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//
//                     const SizedBox(height: 8),
//
//                     const Text(
//                       'Improving your life by checking\nall your cells',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 14,
//                       ),
//                     ),
//
//                     const SizedBox(height: 32),
//
//                     // Get Started button
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         foregroundColor: const Color(0xFF0DBB8E),
//                         padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(24),
//                         ),
//                       ),
//                       child: const Text(
//                         'Get Started',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 // Floating medical clipboard
//                 Positioned(
//                   top: 80,
//                   left: 60,
//                   child: _buildFloatingIcon(Icons.assignment, Colors.blue.shade100),
//                 ),
//
//                 // Floating heart with lightning
//                 Positioned(
//                   top: 60,
//                   right: 60,
//                   child: _buildFloatingIcon(Icons.favorite, Colors.red),
//                 ),
//
//                 // Floating syringe
//                 Positioned(
//                   bottom: 340,
//                   left: 80,
//                   child: _buildFloatingIcon(Icons.colorize, Colors.red.shade100),
//                 ),
//
//                 // Floating stethoscope
//                 Positioned(
//                   bottom: 320,
//                   right: 70,
//                   child: _buildFloatingIcon(Icons.headset_mic, Colors.grey.shade300),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildFloatingIcon(IconData icon, Color color) {
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 5,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Icon(
//         icon,
//         color: Colors.white,
//         size: 30,
//       ),
//     );
//   }
// }
//
// class CircleDecorationPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()
//       ..color = Colors.white.withOpacity(0.2)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 1.0;
//
//     // Draw circle
//     canvas.drawCircle(
//       Offset(size.width / 2, size.height / 2),
//       100,
//       paint,
//     );
//
//     // Draw lines
//     canvas.drawLine(
//       Offset(size.width / 2 - 120, size.height / 2),
//       Offset(size.width / 2 + 120, size.height / 2),
//       paint,
//     );
//
//     canvas.drawLine(
//       Offset(size.width / 2, size.height / 2 - 120),
//       Offset(size.width / 2, size.height / 2 + 120),
//       paint,
//     );
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate)=>false;
// }


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Home(),
      ),
    );
  }
}
