

import 'dart:convert';

import 'package:machine_test_noviindus/constants/api.dart';
import 'package:machine_test_noviindus/model/branchmodel.dart';
import 'package:http/http.dart' as http;
import 'package:machine_test_noviindus/model/treatmentmodel.dart';
import 'package:machine_test_noviindus/view/registration/addtreatment.dart';

class RegistrationService {




  // REGISTER PATIENTS


 
   Future<void>Addpatient( body , token) async {
    Uri url = Uri.parse("${API().baseUrl}${API().PatientUpdate}");


   final Sourcedata = body.to;

     try {
      var response = await http.post(
        url,
        body: jsonEncode(Sourcedata),
         
        headers: {
           'Authorization': 'Bearer $token',
          "Content-Type": "application/json",
          
           },
        
        
      );

      if (response.statusCode == 200) {
        print("Lead Added");
          
      
      } else if(response.statusCode == 500) {
        print("Failed to add lead. ${response.statusCode}");
      }else {

      }
    } catch (e) {
      // Get.snackbar("Error", "Failed to add lead. Please try again.");
      print("Error adding lead: $e");
    }
    
  }






















  // BRANCHES
  Future<List<BranchModel>> getBranch(String token) async {
    final url = Uri.parse("${API().baseUrl}${API().BranchList}");
    try {
      final response = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        if (responseBody is Map<String, dynamic>) {
          final branchJson = responseBody['branches'];
          if (branchJson != null && branchJson is List) {
            List<BranchModel> branches = branchJson
                .map((branchJson) => BranchModel.fromJson(branchJson))
                .toList();
            return branches;
          } else {
            throw Exception('API returned an unexpected response: ${response.body}');
          }
        } else {
          throw Exception('API returned an unexpected response: ${response.body}');
        }
      } else {
        throw Exception('Failed to load branches: ${response.statusCode}');
      }
    } catch (e) {
      rethrow; 
    }
  }





// TREATMENTS



Future<List<Treatment>> fetchTreatments(String token) async {
    final url = Uri.parse("${API().baseUrl}${API().TreatmentList}");

    try {
      final response = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        if (jsonData["status"] == true) {
          final treatmentsData = jsonData["treatments"];
          if (treatmentsData != null && treatmentsData is List) {
            return treatmentsData
                .map((treatmentJson) => Treatment.fromJson(treatmentJson))
                .toList();
          } else {
            throw Exception('Unexpected response structure: ${response.body}');
          }
        } else {
          throw Exception('API Error: ${jsonData["message"]}');
        }
      } else {
        throw Exception('Failed to load treatments: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load treatments: $e');
    }
  }
}

