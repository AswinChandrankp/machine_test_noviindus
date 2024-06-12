import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:machine_test_noviindus/view/base/customButton.dart';
import 'package:machine_test_noviindus/view/base/customtextfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 217,
            child: Expanded(
              child: Stack(
            
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/image.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Positioned(
                      child: SvgPicture.asset(
                        'assets/images/logo.svg',
                        height: 84, 
                        width: 80,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: Column(
                children: [
                   
                  Text("Login or register to book your appointments",
                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      Title: "Email", 
                      controller: TextEditingController(),
                      keyboardType: TextInputType.emailAddress,
                      hintText: " Enter your Mail",
                      isRequired: false,
                      borderColor: Color.fromRGBO(217, 217, 217, 0.25),
                      focusedBorderColor: Color.fromRGBO(217, 217, 217, 0.25) ,
                      errorBorderColor: Color.fromRGBO(217, 217, 217, 0.25) ,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w300) ,
                      ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    Title:"Password" ,
                      controller: TextEditingController(),
                      keyboardType: TextInputType.emailAddress,
                      hintText: "Enter Password",
                      isRequired: false,
                       hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w300) 
                      ),
                  SizedBox(
                    height: 20,),
                Row(
                  children: [
                    Expanded(child: CustomElevatedButton(text: "Login", onPressed: (){})),
                  ],
                ),
            
                ],
                
              ),
            ),
          ),

        
        ],
      ),
    );
  }
}