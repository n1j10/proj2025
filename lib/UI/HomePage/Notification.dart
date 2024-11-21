import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: SafeArea(
            child: ListView(
              children: [
                ///Arrow Back And Notification
                Padding(
                  padding: const EdgeInsets.only(top: 30.0,),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            child: ImageIcon(AssetImage("SvgIcon/02_arrow-left-01.png")
                            ),
                            onTap: (){Get.back();},),
                          SizedBox(width:12 ,),
                          Text(
                            'Notification',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                      SizedBox(height: 16,),
                    ],
                  ),
                ),
                Text('You Have 3 Notification Today !',
                  style:TextStyle(
                    fontSize: 14,
                  ),),
                SizedBox(height: 40,),
                ///Today
                Text('Today',
                  style: TextStyle(
                      fontSize:18,
                      color: Color(0xff0D0D0D),
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 30,),
                ///Notification
                Container(
                  height: 50,
                  width: 345,
                  child: Row(
                    children: [
                      ///Dots

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.circular(20),
                                color: Color(0xffC1D9F0)
                            ),
                          ),
                          SizedBox(width: 6),

                          ///CircleImage + Name
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/zainab.png'),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Saad
                              Row(
                                children: [
                                  Text(
                                    'Zainb saad ',
                                    style: TextStyle(
                                      color: Color(0xFF3C97AF),
                                    ),
                                  ),
                                  Text("comment on your")
                                ],
                              ),
                              Text(
                                'project  1d ',
                                style: TextStyle(
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),

                      SizedBox(width: 20,),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 345,
                  height: 1,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffD9D9D9),
                              width: 1
                          )
                      )
                  ),
                ),
                SizedBox(height: 20,),
                ///Notification
                Container(
                  height: 50,
                  width: 345,
                  child: Row(
                    children: [
                      ///Dots
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20),
                            color: Color(0xffC1D9F0)
                        ),
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/aali.png'),
                      ),
                      SizedBox(width: 20,),

                      Row(
                        children: [
                          Text('Ali Saad',style: TextStyle(color: Color(0xFF3C97AF)),), SizedBox(width: 5,),
                          Text('Apply Your Project  2h'),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 345,
                  height: 1,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffD9D9D9),
                              width: 1
                          )
                      )
                  ),
                ),
                SizedBox(height: 20,),
                ///Notification
                Container(
                  height: 50,
                  width: 345,
                  child: Row(
                    children: [
                      ///Dots
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20),
                            color: Color(0xffC1D9F0)
                        ),
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/karraar.png'),
                      ),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Text('Karar Emad',style: TextStyle(color: Color(0xFF3C97AF)),), SizedBox(width: 5,),
                          Text('Liked Your Project  2h'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                ///line
                Container(
                  width: 345,
                  height: 1,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffD9D9D9),
                              width: 1
                          )
                      )
                  ),
                ),



                SizedBox(height: 32,),
                Text('This Week',
                  style: TextStyle(
                      fontSize:18,
                      color: Color(0xff0D0D0D),
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 22,),



                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(width: 6),

                    ///CircleImage + Name
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/zena.png'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Saad
                        Row(
                          children: [
                            Text(
                              'Zena saad ',
                              style: TextStyle(
                                color: Color(0xFF3C97AF),
                              ),
                            ),
                            Text("comment on your")
                          ],
                        ),
                        Text(
                          'project  1d ',
                          style: TextStyle(
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 18,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 6),

                    ///CircleImage + Name
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/ghofran.png'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Saad
                        Row(
                          children: [
                            Text(
                              'ghoufran saad ',
                              style: TextStyle(
                                color: Color(0xFF3C97AF),
                              ),
                            ),
                            Text("comment on")
                          ],
                        ),
                        Text(
                          'your project  2d ',
                          style: TextStyle(
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 18,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 6),

                    ///CircleImage + Name
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/huda.png'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Saad
                        Row(
                          children: [
                            Text(
                              'Huda salih ',
                              style: TextStyle(
                                color: Color(0xFF3C97AF),
                              ),
                            ),
                            Text("comment on")
                          ],
                        ),
                        Text(
                          'your project  3d ',
                          style: TextStyle(
                          ),
                        ),
                      ],
                    ),

                  ],
                ),

                SizedBox(height: 18,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 6),

                    ///CircleImage + Name
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/mohamedsaad.png'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Saad
                        Row(
                          children: [
                            Text(
                              'Mohammed Saad ',
                              style: TextStyle(
                                color: Color(0xFF3C97AF),
                              ),
                            ),
                            Text("comment on")
                          ],
                        ),
                        Text(
                          'your project  1w ',

                        ),
                      ],
                    ),

                  ],
                ),










              ],
            ),
          ),
        )
    );

  }
}