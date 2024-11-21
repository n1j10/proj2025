import 'package:flutter/material.dart';

import '../../CustomWidgets/CustomClinetContainer.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Profile",style: TextStyle(fontSize: 25),),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24.0,
            child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 40),
            child: Container(
              child: CircleAvatar(
                backgroundColor: Colors.transparent,radius: 75,
                 backgroundImage:AssetImage("images/profile.jpg",),
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blue, // Border color
                        width: 2, // Border width
                      ),
                  )
                ),

              ),
            ),
          ),
          SizedBox(height: 20,),

          ///Client Name
          Padding(
            padding: const EdgeInsets.only(left: 151),
            child: Container(child: Text("Client Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)),
          ),
          ///Busness Scop
          Padding(
            padding: const EdgeInsets.only(left: 160),
            child: Container(child: Text("Business Scope",style: TextStyle(fontSize: 15,color: Colors.grey),)),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                width: 374,
                height: 200,
                 margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFECF6F9),
                  borderRadius: BorderRadius.circular(15), // Add this line for rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("About",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          ),
                          ImageIcon(AssetImage("images/addpro.png")),
                        ]
                      ),

                      SizedBox(height: 10),
                      Text(
                        "GreenTech Solutions Inc.",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        "Renewable Energy & Technology",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        "San Francisco, California, with operations in North America and Europe",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                ),
            ],
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Container(
              width: 300,
              height: 340,
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Color(0xFFECF6F9),
                borderRadius: BorderRadius.circular(15), // Add this line for rounded corners
              ),
              child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xECF6F9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Projects History',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xFF0A0A0A),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(width: 77,),
                                ImageIcon(AssetImage("images/addpro.png")),
                                SizedBox(width: 33,),
                                ImageIcon(AssetImage("images/penup.png")),

                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF60C2C6),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Container(
                                    width: 2,
                                    height: 80,
                                    color: Color(0xFF60C2C6),
                                  ),
                                ],
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Project Name ',
                                    style: TextStyle(
                                      fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF0A0A0A),),),
                                    Text(
                                      '22 Jan 2024 - 11 May 2024.',
                                      style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF999999),),),
                                    SizedBox(height: 8),
                                    Text(
                                      'Developed a task management web application designed to help users organize, prioritize, and track their daily tasks efficiently.',
                                      style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF0A0A0A),),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF60C2C6),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Container(
                                    width: 2,
                                    height: 80,
                                    color: Color(0xFF60C2C6),
                                  ),
                                ],
                              ),
                              SizedBox(width: 16),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Project Name ',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0xFF0A0A0A),
                                      ),
                                    ),
                                    Text(
                                      '15 Feb 2024 - 30 Jun 2024.',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,fontSize: 12, color: Color(0xFF999999),),),
                                    SizedBox(height: 8),
                                    Text(
                                      'Created a mobile application for fitness tracking and health management.',
                                      style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                  )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ClientContainer(),
          ),
        ],
      ),
    );
  }
}







