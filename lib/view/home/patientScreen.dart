import 'package:flutter/material.dart';
import 'package:machine_test_noviindus/view/base/customButton.dart';
import 'package:machine_test_noviindus/view/home/patientlist.dart';
import 'package:machine_test_noviindus/view/registration/registerscreen.dart';

class PatientScreen extends StatelessWidget {
  const PatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: CustomElevatedButton(
        text: "Register Now",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Registerscreen()),
          );
        },
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.25,
            right: MediaQuery.of(context).size.width * 0.25,
            bottom: MediaQuery.of(context).size.height * 0.02,
            top: MediaQuery.of(context).size.height * 0.02),
            fontWeight: FontWeight.w600,
            fontsize: 17,
            borderRadius: 8.52,

            

            
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        child: PationList(),
      ),
    );
  }
}
