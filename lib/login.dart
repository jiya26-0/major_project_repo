import 'package:flutter/material.dart';
import 'signup.dart';
import 'symptom.dart';

void main() {
  runApp(login());
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5F8F4),
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.06,
              child: Image.asset(
                'assets/images/doctor.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: -80,
            right: -80,
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Color(0xFF01A28C), Color(0x0001A28C)],
                  center: Alignment.center,
                  radius: 0.8,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/plus.jpg', width: 50, height: 50),
                        SizedBox(width: 10),
                        Text(
                          'CONSULT',
                          style: TextStyle(
                            color: Color(0xFF019874),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/images/mobile.png',
                      width: 130,
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.teal.withOpacity(0.1),
                            blurRadius: 30,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          buildTextField(
                            controller: emailController,
                            hint: 'Enter your email or phone number',
                            icon: Icons.person,
                          ),
                          SizedBox(height: 20),
                          buildPasswordField(),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Color(0xCC06A881),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 25),
                          ElevatedButton(
                            onPressed: () {
                              String email = emailController.text.trim();
                              String password = passwordController.text.trim();

                              bool isEmail = email.contains('@') && email.contains('.');
                              bool isPhone = RegExp(r'^\d{10}$').hasMatch(email);

                              if (isEmail || isPhone) {
                                if (email == 'abc@gmail.com' && password == '1234') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SymptomsPage()),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Invalid credentials!'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Enter a valid email or phone number'),
                                    backgroundColor: Colors.orange,
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF01A28C),
                              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 100),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 10,
                              shadowColor: Colors.teal,
                            ),
                            child: Text(
                              'Sign In',
                              style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signup()),
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Don't have an account? ",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text: "Sign Up",
                              style: TextStyle(
                                color: Color(0xFF01A28C),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 10)],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          border: InputBorder.none,
          icon: Icon(icon, color: Color(0xFF01A28C)),
          hintText: hint,
        ),
      ),
    );
  }

  Widget buildPasswordField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 10)],
      ),
      child: TextField(
        controller: passwordController,
        obscureText: _obscurePassword,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          border: InputBorder.none,
          icon: Icon(Icons.lock, color: Color(0xFF01A28C)),
          hintText: 'Enter your password',
          suffixIcon: IconButton(
            icon: Icon(
              _obscurePassword ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
          ),
        ),
      ),
    );
  }
}
