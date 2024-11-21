import 'dart:io';

import 'package:allahoakbar/CustomWidgets/CustomProgressIndcator.dart';
import 'package:allahoakbar/UI/CreateProj/projectDurationAndPrice.dart';
import 'package:allahoakbar/controller/FrontOrBackEnd_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SelectOption extends StatefulWidget {
  const SelectOption({super.key});
  @override
  State<SelectOption> createState() => _SelectOptionState();
}
class _SelectOptionState extends State<SelectOption> {
  List<String> contents = ["UIUX Designer", "Back-end", "Front-end", "Mobile app"];
  String? selected;

  SelectController controller = Get.put(SelectController());



  
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          leading: GestureDetector(onTap: () {},
            child: ImageIcon(AssetImage('images/arrowleft.png'), size: 50.0, // Set the desired size
            ),
          ),
          title: Text('Create a project', style: TextStyle(
            fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 24, color: Color(0xFF0D0D0D),
          ),
          ),
          automaticallyImplyLeading: true,
        ),
        backgroundColor: Colors.white,
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 32,right: 32,top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              CustomStepProgress(totalSteps: 2, currentStep: 1),

              SizedBox(height: 12,),
              Text('Project Name',
                style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFF0A0A0A),),
              ),
              SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(hintText: 'Add Your Project Name',
                  hintStyle: TextStyle(color: Color(0xFFD9D9D9), fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Color(0xFFBFBFBF)),
                  ),
                ),
              ),


              Column(
                children: [
                  SizedBox(height: 18,),
                  ///Select Required Qualifications
                  Padding(
                    padding: const EdgeInsets.only(right: 140),
                    child: Text("Select Required Qualifications",
                      style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFF0d0d0d), height: 1.5,),),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 345,
                    height: 48,
                    // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xFF3c97af), width: 1),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.only(left: 5),
                      ///DropdownButton  00000000000
                      child: DropdownButton<String>(
                        value: selected,
                        isExpanded: true,
                        icon: Icon(Icons.arrow_drop_down, color: Color(
                            0xff000000)), iconSize: 24, elevation: 16,
                        style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF3c97af), height: 1.5,
                        ),
                        hint: Text(
                          'Select an option', // Placeholder text when no item is selected
                          style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xDFD9D9DC),
                          ),
                        ),
                        underline: SizedBox(),
                        items: contents.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selected = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),

                  ///Description
                  Padding(
                    padding: const EdgeInsets.only(right: 260),
                    child: Text('Description', style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.w500, height: 1.5, color: Color(0xFF0A0A0A),
                    ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  ///Enter Description for the project 00000000000
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      width: 345,
                      height: 207,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        border: Border.all(color: Color(0xFFBFBFBF)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: 'Enter Description for the project',
                          hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFD9D9D9),),
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 250,),
                  ///Document +Mediaaaa and Next
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {



                        },
                        child: Container(height: 51, width: 77,
                          decoration: BoxDecoration(color: Colors.white,
                            boxShadow: [
                              BoxShadow(spreadRadius: 0, offset: Offset(0, 1), color: Color(0xff3C97AF14),
                              ),
                            ],
                            borderRadius: BorderRadiusDirectional.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
                            children: [
                              Icon(Icons.image, size: 24, color: Color(0xFF3C97AF)),
                              Text('MEDIA', style: TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFF3C97AF),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 100,),
                      ///! Next button 0000000000
                      Container(
                        height: 56,
                        decoration: BoxDecoration(
                          color: Color(0xFF3C97AF),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55, vertical: 16),
                          child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(onTap:(){
                                controller.goToDurationPage();
                                 Get.to(DurationAndProjPrice());
                              },
                                child: Text('Next', style: TextStyle(fontFamily: 'Exo', fontSize: 16, fontWeight: FontWeight.w400, height: 1.5, color: Colors.white,
                                ),
                                ),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.white, size: 24),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
                    ),
          ),
      ]
        ),
      );
  }
}






