import 'package:allahoakbar/OnlyForTest/Custom_Card.dart';
import 'package:allahoakbar/controller/DashBoard_Controller/PendingPage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class EcommerceAppCard extends StatefulWidget {
  @override
  State<EcommerceAppCard> createState() => _EcommerceAppCardState();
}

class _EcommerceAppCardState extends State<EcommerceAppCard> {
  final PendingPageController pendingPageController = Get.put(PendingPageController());
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(leading: IconButton(icon: Image.asset('images/arrowleft.png',
          width: 24,height: 24,), onPressed: () {  },
        ),
          title: Text(
            'E-commerce App',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xFF0D0D0D),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Status **************
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Color(0xff3C97AF),
                        size: 10,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Status :',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A0A0A),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Pending',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF3182CE),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  ///Timeline ***********
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Color(0xff3C97AF),
                        size: 10,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Timeline :',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A0A0A),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '2024/ 11/8',
                        style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF999999),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(height: 32, thickness: 1),
              SizedBox(height: 10,),
              ///Project Description  +  Develop an app       *******
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project Description :',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0A0A0A),
                    ),
                  ),
                  SizedBox(height: 6),
                  ///Develop an app for daily task management  ........
                  Row(
                    children: [
                      Text(
                        'Develop an app for daily task management.....',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF999999),
                        ),
                      ),
                      Text(
                        'see more',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF3C97AF),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Divider(height: 32, thickness: 1),
                ],
              ),
              SizedBox(height: 15,),
              ///3 Freelancer Applied *******
              Text(
                '3 Freelancer Applied:',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0A0A0A),
                ),
              ),
              SizedBox(height: 18,),

              ///Sara Image and Text
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        ///CircleImage + Name
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('images/sara.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 6),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Saad
                            Text(
                              'Sara ',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                                height: 19.1 / 14.0,
                                color: Color(0xFF0D0D0D),
                              ),
                            ),
                            Text(
                              'UIUX Designer',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                                height: 19.1 / 14.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 60,),
                        Row(
                          children: [
                            ElevatedButton(onPressed: (){
                              pendingPageController.goToDOPage();
                            },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffDDF8E7)
                              ),
                              child: Text(
                                'Accept',
                                style: TextStyle(
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                  color: Color(0xff1FAD58),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffFFD6D6)
                              ),
                              child: Text(
                                'Decline',
                                style: TextStyle(
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                  color: Color(0xffEB0000),
                                ),
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ]
              ),

              SizedBox(height: 15,),

              ///Mohamed Ali Image + Button
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        ///CircleImage + Name
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('images/moh.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 6),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mohamed ali',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                                height: 19.1 / 14.0,
                                color: Color(0xFF0D0D0D),
                              ),
                            ),
                            Text(
                              'UIUX Designer',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                                height: 19.1 / 14.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 60,),
                        Row(
                          children: [
                            ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffDDF8E7)
                              ),
                              child: Text(
                                'Accept',
                                style: TextStyle(
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                  color: Color(0xff1FAD58),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffFFD6D6)
                              ),
                              child: Text(
                                'Decline',
                                style: TextStyle(
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                  color: Color(0xffEB0000),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ]
              ),
              SizedBox(height: 15,),

              ///Ali Saad Image + Button
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        ///CircleImage + Name
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('images/Ali.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 6),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Saad
                            Text(
                              'Ali Saad',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                                height: 19.1 / 14.0,
                                color: Color(0xFF0D0D0D),
                              ),
                            ),
                            Text(
                              'UIUX Designer',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                                height: 19.1 / 14.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 60,),
                        Row(
                          children: [
                            ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffDDF8E7)
                              ),
                              child: Text(
                                'Accept',
                                style: TextStyle(
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                  color: Color(0xff1FAD58),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffFFD6D6)
                              ),
                              child: Text(
                                'Decline',
                                style: TextStyle(
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                  color: Color(0xffEB0000),
                                ),
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ]
              ),


            ],
          ),



        ),
      );
  }
}









