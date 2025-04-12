import 'package:flutter/material.dart';
import 'package:major_project/login.dart';

void main() {
  runApp(signup());
}

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirm = true;

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
                  Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/doctor.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Register with us!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
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
                        customTextField(
                          controller: nameController,
                          hint: "Enter your full name",
                          icon: Icons.person,
                        ),
                        SizedBox(height: 15),
                        customTextField(
                          controller: emailController,
                          hint: "Enter your email",
                          icon: Icons.email,
                        ),
                        SizedBox(height: 15),
                        customTextField(
                          controller: phoneController,
                          hint: "Enter your phone number",
                          icon: Icons.phone,
                        ),
                        SizedBox(height: 15),
                        customTextField(
                          controller: passwordController,
                          hint: "Enter your password",
                          icon: Icons.lock,
                          obscure: _obscurePassword,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        customTextField(
                          controller: confirmPasswordController,
                          hint: "Confirm your password",
                          icon: Icons.lock_outline,
                          obscure: _obscureConfirm,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureConfirm ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureConfirm = !_obscureConfirm;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 25),
                        ElevatedButton(
                          onPressed: () {
                            print("Name: ${nameController.text}");
                            print("Email: ${emailController.text}");
                            print("Phone: ${phoneController.text}");
                            print("Password: ${passwordController.text}");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF01A28C),
                            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 10,
                            shadowColor: Colors.teal,
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => login()),
                      );
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          TextSpan(
                            text: "Sign In",
                            style: TextStyle(
                              color: Color(0xFF01A28C),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Poppins',
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
        ],
      ),
    );
  }

  Widget customTextField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    bool obscure = false,
    Widget? suffixIcon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
            offset: Offset(2, 2),
          )
        ],
      ),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        keyboardType: icon == Icons.phone ? TextInputType.phone : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Color(0xFF01A28C)),
          suffixIcon: suffixIcon,
          hintText: hint,
          hintStyle: TextStyle(fontFamily: 'Poppins'),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
