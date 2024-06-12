 import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:machine_test_noviindus/view/base/customButton.dart';
// import 'package:machine_test_noviindus/view/base/customdropdown.dart';
// import 'package:machine_test_noviindus/view/base/customtextfield.dart';

// class Addtreatment extends StatelessWidget {
//    const Addtreatment({super.key});

  
 
//    @override
//    Widget build(BuildContext context) {
//      return Container(
//       height: 428,
//       width: 348,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children:  [
//             SizedBox(height: 20),
//              CustomDropdown(
//               focusedBorderColor: Color.fromRGBO(0, 0, 0, 0.25),
//               borderColor: Color.fromRGBO(0, 0, 0, 0.25),
//               items: ["Item 1", "Item 2", "Item 3"],
//                hintText:"Choose preferd treatment" , 
//                title: "Choose Treatment",),

//                SizedBox(height: 20),

//                Text("Add Patient"),

//                Row(
//                  children: [
//                    Container(
//                     decoration: BoxDecoration(
//                       color: Color.fromRGBO(217, 217, 217, 0.2),
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                         color: Color.fromRGBO(0, 0, 0, 0.25),
//                         width: 1
//                       )
//                     ),
//                      height: 50,
//                      width: 124,
//                      child: Center(child: Text("Male")),
//                    ),

//                    SizedBox(width: 20),
                   
//                 Row(
//                   children: [
//                     Card(
//                       color: Color.fromARGB(255, 0, 104, 55),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(
//                             100),
//                       ),
//                       clipBehavior: Clip.antiAlias,
//                       elevation: 5.0,
//                       child: Icon(Icons.remove, size: 40.0, color: Colors.white,),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Color.fromRGBO(217, 217, 217, 0.25),
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(
//                             color: Color.fromRGBO(0, 0, 0, 0.25),
//                             width: 1
//                           )
//                         ),
//                          height: 40,
//                          width: 44,
//                          child: Center(child: Text("0")),
//                       ),
//                     ),
//                      Card(
//                       color: Color.fromARGB(255, 0, 104, 55),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(
//                             100),
//                       ),
//                       clipBehavior: Clip.antiAlias,
//                       elevation: 5.0,
//                       child: Icon(Icons.add, size: 40.0, color: Colors.white,),
//                     )
//                   ],
//                 )
//                  ],
//                ),

//                SizedBox(height: 20),
//                 Row(
//                  children: [
//                    Container(
//                     decoration: BoxDecoration(
//                       color: Color.fromRGBO(217, 217, 217, 0.2),
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                         color: Color.fromRGBO(0, 0, 0, 0.25),
//                         width: 1
//                       )
//                     ),
//                      height: 50,
//                      width: 124,
//                      child: Center(child: Text("Female")),
//                    ),

//                    SizedBox(width: 20),
                   
//                 Row(
//                   children: [
//                     Card(
//                       color: Color.fromARGB(255, 0, 104, 55),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(
//                             100),
//                       ),
//                       clipBehavior: Clip.antiAlias,
//                       elevation: 5.0,
//                       child: Icon(Icons.remove, size: 40.0, color: Colors.white,),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Color.fromRGBO(217, 217, 217, 0.2),
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(
//                             color: Color.fromRGBO(0, 0, 0, 0.25),
//                             width: 1
//                           )
//                         ),
//                          height: 40,
//                          width: 44,
//                          child: Center(child: Text("0")),
//                       ),
//                     ),
//                      Card(
//                       color: Color.fromARGB(255, 0, 104, 55),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(
//                             100),
//                       ),
//                       clipBehavior: Clip.antiAlias,
//                       elevation: 5.0,
//                       child: Icon(Icons.add, size: 40.0, color: Colors.white,),
//                     )
//                   ],
//                 )
//                  ],
//                ),
// SizedBox(height: 20),
//                Row(
//                  children: [
//                    Expanded(child: CustomElevatedButton(text: "Saved", onPressed: () {},)),
//                  ],
//                )
//           ],
//         ),
//       ),
//      );
//    }
//  }


import 'package:flutter/material.dart';
import 'package:machine_test_noviindus/controller/addtreatmentcontroller.dart';
import 'package:provider/provider.dart';
import 'package:machine_test_noviindus/view/base/customButton.dart';
import 'package:machine_test_noviindus/view/base/customdropdown.dart';
import 'package:machine_test_noviindus/view/base/customtextfield.dart';


class Addtreatment extends StatelessWidget {
  const Addtreatment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 428,
      width: 348,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            // CustomDropdown(
            //   focusedBorderColor: Color.fromRGBO(0, 0, 0, 0.25),
            //   borderColor: Color.fromRGBO(0, 0, 0, 0.25),
            //   items: ["Kozhikode","Palakkad","Thrissur","Kannur"],
            //   hintText: "Choose preferred treatment",
            //   title: "Choose Treatment",
            //   onChanged: (p0) {
            //     print(p0);
            //     context.read<addtreatmentcontroller>().treatmentname = p0.toString();
            //   },
            // ),
             CustomDropdown1(
                
                items: List<String>.generate(20, (index) => 'Item ${index + 1}'), 
                hintText: "Choose preferred treatmen", 
                title: "Choose Treatment",
                 onChanged: (p0) {
                print(p0);
                context.read<addtreatmentcontroller>().treatmentname = p0.toString();
              },
                ),
            SizedBox(height: 20),
            Text("Add Patient"),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 0.2),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      width: 1,
                    ),
                  ),
                  height: 50,
                  width: 124,
                  child: Center(child: Text("Male")),
                ),
                SizedBox(width: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<addtreatmentcontroller>().maleDecrement();
                      },
                      child: Card(
                        color: Color.fromARGB(255, 0, 104, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        clipBehavior: Clip.antiAlias,
                        elevation: 5.0,
                        child: Icon(
                          Icons.remove,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 0.25),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            width: 1,
                          ),
                        ),
                        height: 40,
                        width: 44,
                        child: Center(
                          child: Consumer<addtreatmentcontroller>(
                            builder: (context, controller, child) {
                              return Text('${controller.male}');
                            },
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<addtreatmentcontroller>().maleIncrement();
                      },
                      child: Card(
                        color: Color.fromARGB(255, 0, 104, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        clipBehavior: Clip.antiAlias,
                        elevation: 5.0,
                        child: Icon(
                          Icons.add,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 0.2),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      width: 1,
                    ),
                  ),
                  height: 50,
                  width: 124,
                  child: Center(child: Text("Female")),
                ),
                SizedBox(width: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<addtreatmentcontroller>().femaleDecrement();
                      },
                      child: Card(
                        color: Color.fromARGB(255, 0, 104, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        clipBehavior: Clip.antiAlias,
                        elevation: 5.0,
                        child: Icon(
                          Icons.remove,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 0.25),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            width: 1,
                          ),
                        ),
                        height: 40,
                        width: 44,
                        child: Center(
                          child: Consumer<addtreatmentcontroller>(
                            builder: (context, controller, child) {
                              return Text('${controller.female}');
                            },
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<addtreatmentcontroller>().femaleIncrement();
                      },
                      child: Card(
                        color: Color.fromARGB(255, 0, 104, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        clipBehavior: Clip.antiAlias,
                        elevation: 5.0,
                        child: Icon(
                          Icons.add,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    text: "Saved",
                    onPressed: () {
                      context.read<addtreatmentcontroller>().addTreatment();
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
