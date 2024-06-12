// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:machine_test_noviindus/model/usermodel.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

// class authcontroller extends ChangeNotifier {
//   TextEditingController emailtextcontroller = TextEditingController();
//   TextEditingController passwordtextcontroller = TextEditingController();
//   String password = ""; 
  


// late String _token;
//   late UserDetails _userDetails;

//   String get token => _token;
//   UserDetails get userDetails => _userDetails;

//   void login() async {
//     // print(emailtextcontroller.toString());
//     //   print(passwordtextcontroller.toString());
//     final formData = {
//       'username': "test_user",
//       'password': "12345678",
//     };

//     final response = await http.post(Uri.parse('https://flutter-amr.noviindus.in/api/login'),
//         body: formData);

//     if (response.statusCode == 200) {
//       final jsonData = jsonDecode(response.body);
//       _token = jsonData['token'];
//       print(_token);
//       _userDetails = UserDetails.fromJson(jsonData['user_details']);
//       notifyListeners();
//       // Store the token in shared preferences
//       final prefs = await SharedPreferences.getInstance();
//       prefs.setString('token', _token);
//     } else {
//       print(emailtextcontroller.toString());
//       print(passwordtextcontroller.toString());
//       throw Exception('Failed to login');
//     }
//   }
// }
   





import 'package:flutter/material.dart';
import 'package:machine_test_noviindus/model/usermodel.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert'; // Import to decode JSON

// class AuthController extends ChangeNotifier {
//   TextEditingController emailTextController = TextEditingController();
//   TextEditingController passwordTextController = TextEditingController();

//   late String _token;
//   late UserDetails _userDetails;

//   String get token => _token;
//   UserDetails get userDetails => _userDetails;

//  void login() async {
//   final formData = {
//     'username': "test_user",
//     'password': "12345678",
//   };

//   final uri = Uri.parse('https://flutter-amr.noviindus.in/api/Login');

//   try {
//     final response = await http.post(
//       uri,
//       headers: {
//         'Content-Type': 'application/x-www-form-urlencoded',
//       },
//       body: formData.keys.map((key) => '$key=${Uri.encodeQueryComponent(formData[key]!)}').join('&'),
//     );

//     if (response.statusCode == 200) {
//       final jsonData = jsonDecode(response.body);
//       print('API Response: $jsonData');

//       if (jsonData.containsKey('token') && jsonData.containsKey('user_details')) {
//         _token = jsonData['token'];
//         print(_token);
//         _userDetails = UserDetails.fromJson(jsonData['user_details']);
//         notifyListeners();

//         // Store the token in shared preferences
//         final prefs = await SharedPreferences.getInstance();
//         prefs.setString('token', _token);
//       } else {
//         throw Exception('Invalid API response');
//       }
//     } else {
//       throw Exception('Failed to login. Status code: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('Error: $e');
//     throw Exception('Failed to login');
//   }
// }
// }




import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert'; // Import to decode JSON

class UserDetails {
  final String name;
  final String email;

  UserDetails({required this.name, required this.email});

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return UserDetails(
      name: json['name'],
      email: json['email'],
    );
  }
}

class AuthController extends ChangeNotifier {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  late String _token;
  late UserDetails _userDetails;

  String get token => _token;
  UserDetails get userDetails => _userDetails;

  void login() async {
    final formData = {
      'username': 'test_user',
      'password': '12345678',
    };

    final uri = Uri.parse('https://flutter-amr.noviindus.in/api/Login');

    try {
      final response = await http.post(
        uri,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: formData.map((key, value) => MapEntry(key, Uri.encodeQueryComponent(value))),
      );

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        print('API Response: $jsonData');

        if (jsonData.containsKey('token') && jsonData.containsKey('user_details')) {
          _token = jsonData['token'];
          print(_token);
          _userDetails = UserDetails.fromJson(jsonData['user_details']);
          notifyListeners();

          // Store the token in shared preferences
          final prefs = await SharedPreferences.getInstance();
          prefs.setString('token', _token);
        } else {
          throw Exception('Invalid API response');
        }
      } else {
        throw Exception('Failed to login. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to login');
    }
  }
}

