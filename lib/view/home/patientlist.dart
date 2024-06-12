import 'package:flutter/material.dart';
import 'package:machine_test_noviindus/view/home/widgets/patientcard.dart';

class PationList extends StatelessWidget {
  const PationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>PatientCard(
        cardnumber: 1,
        patientname: "john doe",
      ),
      
       itemCount: 10,);
      
       
  }
}