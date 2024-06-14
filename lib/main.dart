import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test_noviindus/controller/addtreatmentcontroller.dart';
import 'package:machine_test_noviindus/controller/authcontroller.dart';
import 'package:machine_test_noviindus/controller/patientcontroller.dart';
import 'package:machine_test_noviindus/controller/registrationcontroller.dart';
import 'package:machine_test_noviindus/view/auth/login.dart';
import 'package:machine_test_noviindus/view/splashscreen/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => addtreatmentcontroller()),
        ChangeNotifierProvider(create:(_) =>  AuthController()),
        ChangeNotifierProvider(create: (_) => PatientController()),
        ChangeNotifierProvider(create: (_) => RegistrationController()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        
        useMaterial3: true,
      ),
      home:  Splash(),
    );
  }
}
