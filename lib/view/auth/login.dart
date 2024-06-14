
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:machine_test_noviindus/controller/addtreatmentcontroller.dart';
import 'package:machine_test_noviindus/controller/authcontroller.dart';
import 'package:machine_test_noviindus/view/base/customButton.dart';
import 'package:machine_test_noviindus/view/base/customtextfield.dart';
import 'package:machine_test_noviindus/view/home/patientScreen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 217,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.asset(
                  'assets/images/image.png',
                  fit: BoxFit.cover,
                ),
                Center(
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    height: 84,
                    width: 80,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Login or register to book your appointments",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  title: "Email",
                  controller: context.read<AuthController>().emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Enter your Mail",
                  isRequired: false,
                  borderColor: Color.fromRGBO(217, 217, 217, 0.25),
                  focusedBorderColor: Color.fromRGBO(217, 217, 217, 0.25),
                  errorBorderColor: Color.fromRGBO(217, 217, 217, 0.25),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  title: "Password",
                  controller: context.read<AuthController>().passwordTextController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Enter Password",
                  isRequired: false,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 20),
                CustomElevatedButton(
                  text: "Login",
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => PatientScreen()),
                    // );
                    context.read<AuthController>().login(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
