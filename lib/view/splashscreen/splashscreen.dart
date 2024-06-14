// splash_screen.dart


// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:machine_test_noviindus/view/auth/login.dart';
// import 'package:machine_test_noviindus/view/home/patientScreen.dart';
// import 'package:shared_preferences/shared_preferences.dart';

//  // Import the new pending page

// class Splash extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//     _navigateToNextPage();
//   }

//   Future<void> _navigateToNextPage() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? userToken = prefs.getString('token');
//  // Retrieve the status

//     print("Retrieved token in splash screen: $userToken"); // Debug output
//     // Debug output

//     Timer(
//       Duration(seconds: 2),
//           () {
//          if (userToken == null || userToken.isEmpty) {
//           print("No token found, navigating to login page."); // Debug output
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => LoginScreen()),
//           );
//         } else {
//           print("Token found, navigating to home page."); // Debug output
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => PatientScreen()),
//           );
//         }
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber,
//       body: Center(
//         child: Image.asset(
//           'assets/logo/logomaster.png',
//           width: 200, // Set the desired width
//           height: 200, // Set the desired height
//         ),
//       ),
//     );
//   }
// }



import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:machine_test_noviindus/view/auth/login.dart';
import 'package:machine_test_noviindus/view/home/patientScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }

  Future<void> _navigateToNextPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userToken = prefs.getString('token')?? ''; // Provide a default value if token is null

    print("Retrieved token in splash screen: $userToken"); // Debug output

    // Validate the token
    // bool isValidToken = await _validateToken(userToken);

    Timer(
      Duration(seconds: 2),
          () {
        if (userToken.isEmpty) {
          print("No token found or token is invalid, navigating to login page."); // Debug output
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        } else {
          print("Token found and is valid, navigating to home page."); // Debug output
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => PatientScreen()),
          );
        }
      },
    );
  }

  // Future<bool> _validateToken(String? token) async {
  //   // Make a request to your server to validate the token
  //   // For example:
  //   // final response = await http.post(Uri.parse('https://your-server.com/validate-token'), headers: {
  //   //   'Authorization': 'Bearer $token',
  //   // });

  //   // If the token is valid, return true
  //   // If the token is invalid, return false
  //   // For example:
  //   // return response.statusCode == 200;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          width: 200, // Set the desired width
          height: 200, // Set the desired height
        ),
      ),
    );
  }
}