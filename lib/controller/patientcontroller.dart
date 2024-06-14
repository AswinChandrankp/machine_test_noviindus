import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:machine_test_noviindus/constants/api.dart';
import 'package:machine_test_noviindus/model/patientmodel.dart';
import 'package:machine_test_noviindus/services/patientservice.dart';
import 'package:machine_test_noviindus/view/home/patientlist.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';





class PatientController with ChangeNotifier {
  List<Patientmodel> _patients = [];
  bool _isLoading = false;
  final itemlenth = 0;

  List<Patientmodel> get patients => _patients;
  bool get isLoading => _isLoading;

  final _tokenService = TokenService();
  final _patientService = PatientService();

  Future<void> fetchPatientList() async {
    _isLoading = true;
    notifyListeners();

    try {
      final token = await _tokenService.getToken();
      final patients = await _patientService.getPatientList(token);
      _patients = patients;
      print("Success");
    } catch (e) {
      print("Error while fetching patients: $e");
      _patients = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  PatientController() {
    fetchPatientList();
  }
}



