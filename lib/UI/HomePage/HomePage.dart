import 'package:allahoakbar/CustomWidgets/CustomClinetContainer.dart';
import 'package:allahoakbar/CustomWidgets/bottom_sheet.dart';
import 'package:allahoakbar/UI/HomePage/Notification.dart';
import 'package:allahoakbar/controller/fillter_icon_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FiltterIconController filter =Get.put(FiltterIconController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: [
                    ///Profile container
                    Container(
                      height: 55,
                      width: 400,
                      margin: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          ///client profile
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,radius: 37,
                              backgroundImage:AssetImage("images/profile.jpg",),
                              child: Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  )
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          ///name of client
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdulla Ali',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Client',
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff999999)),
                              )
                            ],
                          ),
                          Spacer(),
                          ///notofication Button
                          Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadiusDirectional.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff3C97AF14),
                                      offset: Offset(0, 2),
                                      blurRadius: 8,
                                      spreadRadius: 0,
                                    ),
                                  ]),
                              child: IconButton(
                                onPressed: () {
                                  Get.to(NotificationView());
                                },
                                icon: ImageIcon(
                                  AssetImage("SvgIcon/notification.png"),
                                  color: Color(0xFF3A5A98),
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Row(
                children: [
                  ///search
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Container(
                      // margin: EdgeInsets.all(15),
                      height: 48,
                      width: 280,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff3C97AF14),
                            blurRadius: 1,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:
                      ///search TextFormField
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ImageIcon(
                                AssetImage("SvgIcon/search.png"),
                            ),
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Color(0xffBFBFBF),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.white54, // Color when not focused
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.white54, // Color when focused
                              // Border width when focused
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 5,),
                  ///filter icon
                  Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(16),
                            border: Border.all(
                                color: filter.isselected.value?Color(0xff3C97AF):Colors.white54,
                                width: 1
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff3C97AF14),
                                blurRadius: 2,
                              ),
                            ]),
                        child: IconButton(
                          onPressed: () {
                            // Get.to(SelectOption());
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return CustomBottomSheet(); // Custom BottomSheet widget
                              },
                            );
                            filter.onselected();
                            print('press');
                          },
                            icon: ImageIcon(AssetImage("SvgIcon/filter.png"),
                            color: filter.isselected.value? Color(0xff3C97AF):Colors.black87,
                          ),
                        )),
                  ),
                ],
              ),

              ///client container
              ClientContainer(),
              ClientContainer()
            ],
          ),
        ));
  }
}