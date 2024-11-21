import 'package:flutter/material.dart';

class ClientContainer extends StatefulWidget {
  const ClientContainer({super.key});

  @override
  State<ClientContainer> createState() => _ClientContainerState();
}

class _ClientContainerState extends State<ClientContainer> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        height: 463,
        width: 365,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(12),
            boxShadow: [
              BoxShadow(
                   blurRadius: 1,
                  // spreadRadius: 0,
                  color: Color(0xff3C97AF14))
            ]

        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12,top: 10),
                        child: Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,radius: 25,
                            backgroundImage:AssetImage("images/profile.jpg",),
                            child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Client Name',
                            style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600, fontSize: 18.0, color: Colors.black,
                            ),
                          ),
                          Text(
                            'Posted 2 hours ago',
                            style: TextStyle(fontFamily: 'Source Sans Pro', fontWeight: FontWeight.w400, fontSize: 10.0, color: Color(0xFF808080),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFddf8e7),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: InkWell(onTap: (){},
                          child: Text(
                            'Available',
                            style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600, fontSize: 12.0, color: Color(0xFF4db251),),),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      InkWell(onTap: (){

                      },child: Icon(Icons.more_vert, color: Color(0xFF000000)
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Looking for Full-Sack Developer\nwith experience +2 years',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: Color(0xFF0a0a0a),
                      height: 1.25,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text('to build a responsive, user-focused web application. Must be skilled in both front-end and back-end development...See more',
                    style: TextStyle(fontFamily: 'Source Sans Pro', fontWeight: FontWeight.w400, fontSize: 14.0, color: Color(0xFF999999), height: 1.5,),),
                  SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("images/im2.png"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 5,),
                          ImageIcon(AssetImage("images/like.png"),),
                          SizedBox(width: 4.0),
                          Text('like',
                            style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 14.0, color: Color(0xFF999999),),),

                          SizedBox(width: 16.0),
                          ImageIcon(AssetImage("images/message.png"),),
                          SizedBox(width: 4.0),
                          Text('comment',
                            style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 14.0, color: Color(0xFF808080),),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      );
  }
}