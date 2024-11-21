
import 'package:allahoakbar/CustomWidgets/BNB.dart';
import 'package:allahoakbar/CustomWidgets/CustomProgressIndcator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});
  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}
class _RegisterscreenState extends State<Registerscreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomStepProgress(totalSteps: 3, currentStep: 3),

              const SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.only(left: 10,right: 90),
                child: Text(
                  "Enter Your Information",style: TextStyle(fontWeight:FontWeight.w800,fontFamily: 'Poppins',fontSize: 32 ),
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(right: 65),
                child: Text(
                  'Please enter your personal information to\n '
                    'complete the registration process.',style: TextStyle(fontFamily: 'Poppins',fontSize: 16,color: Color(0xFF999999)),
                ),
              ),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 340,top: 10,bottom: 20),
                child: Text('Name',style: TextStyle(color: Color(0XFF0A0A0A),fontSize: 14),

                ),
              ),


              SizedBox(height: 48,width: 385,

                child: Expanded(
                    child:TextFormField(
                      validator: (value) => value!.isEmpty ? 'Enter Your Name' : null,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText:"Enter your Full name",
                        hintStyle: TextStyle(
                          color: Color(0xFFD9D9D9),
                          // Set your desired hint text color here
                        ),



                        // labelText: "Phone Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color:Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFF3C97AF)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    )

                ),
              ),SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.only(right: 340,top: 10,bottom: 20),
                  child: Text('Email',style: TextStyle(color: Color(0XFF0A0A0A),fontSize: 14),
                  ),
              ),
              SizedBox(height: 48,width: 385,


                child: Expanded(
                    child:TextFormField(
                      validator: (value) => value!.isEmpty ? 'Enter Your Email' : null,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText:"Enter your Email Address",
                        hintStyle: TextStyle(
                          color: Color(0xFFD9D9D9), // Set your desired hint text color here
                        ),



                        // labelText: "Phone Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFF3C97AF)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    )

                ),
              ),SizedBox(height: 5,),

          // Text('Name',style: TextStyle(color: Color(0XFF0A0A0A),fontSize: 14),


            Padding(
              padding: const EdgeInsets.only(right: 310,top: 13),
              child: Text('Password',style: TextStyle(color: Color(0XFF0A0A0A),fontSize: 14),

              ),
            ),
               SizedBox(height: 13,),


               SizedBox(height: 48,width: 385,
                child: Expanded(
                    child:TextFormField(
                      validator: (value) => value!.isEmpty ? 'Enter Your Password' : null,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText:"Enter Password",
                        hintStyle: TextStyle(
                          color: Color(0xFFD9D9D9),
                        ),

                        ///Default
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        ///Focus
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFF3C97AF)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    )

                ),
              ),
              const SizedBox(height: 75),
              SizedBox(height: 50,width: 375,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor:
                      const Color(0xFF3C97AF)
                    // Button color based on selection
                  ),
                  onPressed:
                      () {
                      Get.to(Bnb());
                  },
                  /// Disable if no option is selected
                  child: Row(
                    mainAxisSize: MainAxisSize.min, // Make the row fit its content
                    children: [

                     Text('Complete registration',style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'EXO'),


                    ),

                    ],
                  ),


                ),
              )
            ],
          ),
        ),
      );








  }
}