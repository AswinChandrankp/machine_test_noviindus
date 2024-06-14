import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:machine_test_noviindus/controller/patientcontroller.dart';
import 'package:machine_test_noviindus/model/patientmodel.dart';
import 'package:machine_test_noviindus/view/home/widgets/patientcard.dart';
import 'package:provider/provider.dart';



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




class PatientListView extends StatelessWidget {
  const PatientListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PatientController>(
      builder: (context, controller, child) {
        return RefreshIndicator(
          onRefresh: () => controller.fetchPatientList(), // Handle refresh
          child: controller.isLoading
              ? Center(child: CircularProgressIndicator())
              : controller.patients.isEmpty
                  ? Center(child: Text('No patients found'))
                  : ListView.builder(
                     
                      itemCount:  controller.patients.indexOf(controller.patients.lastWhere((element) => element.patient!.isNotEmpty)),
                      itemBuilder: (context, patientModelIndex) {
                        final patientList = controller.patients[patientModelIndex].patient!;

                        return ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          
                          itemCount: controller.patients[patientModelIndex].patient!.length,
                          itemBuilder: (context, index) {
                          final  cardnumber = patientModelIndex + 1;
                            final patient = patientList[index];
                            

                            return PatientCard(
                              cardnumber: cardnumber ,
                              patientname: patient.name,
                              package: patient.patientdetailsSet!.first.treatmentName,
                            );
                          },
                        );
                      },
                    ),
        );
      },
    );
  }
}