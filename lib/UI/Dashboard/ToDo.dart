import 'package:allahoakbar/CustomWidgets/DashBoard_Wiget/Custom_Checked_Card.dart';
import 'package:allahoakbar/CustomWidgets/DashBoard_Wiget/Custom_E_commerce_Card.dart';
import 'package:allahoakbar/CustomWidgets/DashBoard_Wiget/Custom_InProgress_Card.dart';
import 'package:allahoakbar/CustomWidgets/DashBoard_Wiget/Custom_UnCheck_Card.dart';
import 'package:allahoakbar/CustomWidgets/DashBoard_Wiget/List_Tabs.dart';
import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:container_tab_indicator/container_tab_indicator.dart';
class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}
class _ToDoState extends State<ToDo> {
  // List<String>listc=['To Do','In Progress','In Review','Done'];
  // int isCorrunt=0;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(leading: IconButton(icon: Image.asset('images/arrowleft.png',
          width: 24,height: 24,),
          onPressed: () {


        },
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
                        'In Progress',
                        style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.w600,
                          color: Color(0xFFFFBF00),
                        ),
                      ),
                      ///CircularIndicator ******
                      Padding(
                        padding: const EdgeInsets.only(left: 160,),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  width: 64,
                                  height: 64,
                                  child: CircularProgressIndicator(
                                    value: 0.5,
                                    strokeWidth: 8,
                                    backgroundColor: Colors.grey[300],
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                                  ),
                                ),
                                Text('50%', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF808080), height: 1.25,
                                ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1),
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
                      SizedBox(width: 44,),

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

              SizedBox(height: 10),
              Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ///3 Freelancer Applied *******
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '3 Freelancer Applied:',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF0A0A0A),
                              ),
                            ),
                          ],
                        ),
                         SizedBox(width: 130,),
                        Row(
                          children: [
                            ElevatedButton(onPressed: (){},

                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff3C97AF),
                                  shape: CircleBorder(),
                              ),
                              child: Icon(Icons.add,color: Colors.white,)
                            ),
                          ],
                        ),
                      ],
                    ),

                    ///Tab Bar  ******************
                    ListTabs()

                    
                  ]
              ),
              SizedBox(height: 20,),

            ]
        ),
        ),
      );
  }
}






























// MediaQuery.of(context).size.width, 100.0


// ExpandablePageView(
//   children: [
//     Container(
//       width:400 ,
//       height: 290,
//       color: Colors.red,
//         child: Text("data")),
//     Text("data"),
//     Text("data"),
//
//
//
//     // ExamplePage(Colors.blue, "1", 100),
//     // ExamplePage(Colors.green, "2", 200),
//     // ExamplePage(Colors.red, "3", 300),
//   ],
// ),






