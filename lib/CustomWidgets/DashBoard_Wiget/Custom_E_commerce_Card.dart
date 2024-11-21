import 'package:flutter/material.dart';

class CustomToDoCard extends StatefulWidget {
  const CustomToDoCard({super.key});

  @override
  State<CustomToDoCard> createState() => _CustomToDoCardState();
}

class _CustomToDoCardState extends State<CustomToDoCard> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Color(0xFFF7FDFD),  ///Color Card Card Card
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: 345,
              height: 50,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Design Registration Screen',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,fontFamily: 'Poppins',
                            color: Color(0xFF1B2637),
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(onTap:(){}
                              ,child: ImageIcon(
                                AssetImage("images/update.png"),
                                // color: Color(0xFF3A5A98),
                              ),
                            ),
                            SizedBox(width: 4),
                            InkWell(onTap:(){}
                              ,child: ImageIcon(
                                AssetImage("images/trash.png"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Color(0xFFF7FDFD),  ///Color Card Card Card
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: 345,
              height: 50,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Design Registration Screen',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,fontFamily: 'Poppins',
                            color: Color(0xFF1B2637),
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(onTap:(){}
                              ,child: ImageIcon(
                                AssetImage("images/update.png"),
                                // color: Color(0xFF3A5A98),
                              ),
                            ),
                            SizedBox(width: 4),
                            InkWell(onTap:(){}
                              ,child: ImageIcon(
                                AssetImage("images/trash.png"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Color(0xFFF7FDFD),  ///Color Card Card Card
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: 345,
              height: 50,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Design Registration Screen',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,fontFamily: 'Poppins',
                            color: Color(0xFF1B2637),
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(onTap:(){}
                              ,child: ImageIcon(
                                AssetImage("images/update.png"),
                                // color: Color(0xFF3A5A98),
                              ),
                            ),
                            SizedBox(width: 4),
                            InkWell(onTap:(){}
                              ,child: ImageIcon(
                                AssetImage("images/trash.png"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );




  }
}
