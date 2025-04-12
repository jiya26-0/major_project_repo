import 'package:flutter/material.dart';
import 'result.dart';

class SymptomsPage extends StatefulWidget {
  @override
  _SymptomsPageState createState() => _SymptomsPageState();
}

class _SymptomsPageState extends State<SymptomsPage> {
  final List<String> symptoms = [
    'Fever',
    'Cough',
    'Headache',
    'Fatigue',
    'Nausea',
    'Shortness of breath',
    'Sore throat',
  ];

  final Map<String, bool> selectedSymptoms = {};

  @override
  void initState() {
    super.initState();
    for (var symptom in symptoms) {
      selectedSymptoms[symptom] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // 🌄 Background Medical Image
            Positioned.fill(
              child: Opacity(
                opacity: 0.08,
                child: Image.asset(
                  "assets/images/doctor.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // 🌿 Background Circles
            Positioned(
              left: 280,
              top: -55,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0x6001A28C),
                ),
              ),
            ),
            Positioned(
              left: 300,
              top: -85,
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF01A28C),
                ),
              ),
            ),

            // 🌿 Main Content
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 130, 20, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Icon(Icons.medical_services_rounded,
                              color: Color(0xFF01A28C), size: 50),
                          SizedBox(height: 10),
                          Text(
                            "Select Your Symptoms",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Choose the symptoms you're experiencing",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              color: Colors.grey[700],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),

                    // Symptom Cards
                    Column(
                      children: symptoms.map((symptom) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              )
                            ],
                          ),
                          child: CheckboxListTile(
                            title: Text(
                              symptom,
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            value: selectedSymptoms[symptom],
                            activeColor: Color(0xFF01A28C),
                            onChanged: (value) {
                              setState(() {
                                selectedSymptoms[symptom] = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 40),

                    // Submit Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => result()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF027E6D),
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 5,
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
