





import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:machine_test_noviindus/model/usermodel.dart';
import 'package:machine_test_noviindus/view/home/patientScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class AuthController with ChangeNotifier {
//   final TextEditingController emailTextController = TextEditingController();
//   final TextEditingController passwordTextController = TextEditingController();

//   String? _token;
//   UserDetails? _userDetails;

//   String? get token => _token;
//   UserDetails? get userDetails => _userDetails;

//   Future<void> login() async {
//     var dio = Dio();

//     dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
//       var customHeaders = {
//         'content-type': 'application/x-www-form-urlencoded',
//         // Add your custom headers here
//       };
//       options.headers.addAll(customHeaders);

//       handler.next(options); // Continue with the request
//     }));

//     final formData = FormData.fromMap({
//       'username': "test_user",
//       'password': "12345678",
//     });

//     try {
//       Response response = await dio.post(
//         'https://flutter-amr.noviindus.in/api/Login',
//         data: formData,
//         options: Options(
//           contentType: 'application/x-www-form-urlencoded',
//           followRedirects: true,
//         ),
//       );

//       if (response.statusCode == 200) {
//         final jsonData = response.data;
       
//         print('API Response: $jsonData');
//         _token = jsonData['token'];
//         print("token is "+_token.toString());
//         _userDetails = UserDetails.fromJson(jsonData['user_details']);
       
//          if (_token != null) {
//           print("login success");
//              final prefs = await SharedPreferences.getInstance();
//           await prefs.setString('token', _token!);
        
          
//            Navigator.push(
//   context,
//   MaterialPageRoute(builder: (context) => PatientScreen()),
// );

//          } else {
//           print("login failed");
//         }
       
//           notifyListeners();

      
        
//         } 
//       } catch (e) {
//         print('Error: $e');
//         throw Exception('Failed to login');
//       }
//     }
// }




import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
 // Import your UserDetails model

class AuthController with ChangeNotifier {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  String? _token;
  UserDetails? _userDetails;

  String? get token => _token;
  UserDetails? get userDetails => _userDetails;

  Future<void> login(BuildContext context) async {
    var dio = Dio();

    dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
      var customHeaders = {
        'content-type': 'application/x-www-form-urlencoded',
        // Add your custom headers here
      };
      options.headers.addAll(customHeaders);

      handler.next(options); // Continue with the request
    }));

    final formData = FormData.fromMap({
      'username': emailTextController.text,
      'password': passwordTextController.text,
    });

    try {
      Response response = await dio.post(
        'https://flutter-amr.noviindus.in/api/Login',
        data: formData,
        options: Options(
          contentType: 'application/x-www-form-urlencoded',
          followRedirects: true,
        ),
      );

      if (response.statusCode == 200) {
        final jsonData = response.data;
        _token = jsonData['token'];
        _userDetails = UserDetails.fromJson(jsonData['user_details']);
        final prefs = await SharedPreferences.getInstance();
          await prefs.setString('token', _token!);

        if (_token != null) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('token', _token!);
    
          // Navigate to the next screen using the provided context
       Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PatientScreen()),
          );
        } else {
          print("login failed");
           
        }

        notifyListeners();
      } else {
         Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PatientScreen()),
          );
        throw Exception('Failed to login');
        
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to login');
    }
  }


}
