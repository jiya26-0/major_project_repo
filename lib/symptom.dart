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
    'Chest Pain',
    'Body Ache',
    'Vomiting',
    'Diarrhea',
  ];

  final Map<String, bool> selectedSymptoms = {};
  String precautions = "";

  @override
  void initState() {
    super.initState();
    for (var symptom in symptoms) {
      selectedSymptoms[symptom] = false;
    }
  }

  void evaluateSymptoms() {
    List<String> selected = selectedSymptoms.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();

    if (selected.contains('Fever') && selected.contains('Cough')) {
      precautions =
      "You may have flu or viral infection.\nPrecautions: Stay hydrated, rest well, and consult a doctor if symptoms persist.";
    } else if (selected.contains('Headache') && selected.contains('Fatigue')) {
      precautions =
      "You might be experiencing stress or migraine.\nPrecautions: Take rest, stay away from screens, drink water.";
    } else if (selected.contains('Shortness of breath') &&
        selected.contains('Chest Pain')) {
      precautions =
      "Possible respiratory issue or heart-related condition.\nPrecautions: Seek immediate medical attention.";
    } else if (selected.contains('Nausea') &&
        selected.contains('Vomiting') &&
        selected.contains('Diarrhea')) {
      precautions =
      "You may have food poisoning or stomach infection.\nPrecautions: Drink ORS, avoid solid food, and consult doctor.";
    } else if (selected.contains('Body Ache') &&
        selected.contains('Fever')) {
      precautions =
      "Possible viral fever or flu.\nPrecautions: Rest, take paracetamol, and drink plenty of water.";
    } else {
      precautions = "Please consult a doctor for accurate diagnosis.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.08,
                child: Image.asset(
                  "assets/images/doctor.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          evaluateSymptoms();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultPage(precautions),
                            ),
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
