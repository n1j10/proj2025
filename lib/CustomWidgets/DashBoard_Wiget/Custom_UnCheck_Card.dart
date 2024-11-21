import 'package:flutter/material.dart';

class CustomUncheckCard extends StatefulWidget {
  const CustomUncheckCard({super.key});

  @override
  State<CustomUncheckCard> createState() => _CustomUncheckCardState();
}

class _CustomUncheckCardState extends State<CustomUncheckCard> {
  bool unselect =false;
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
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.green,
                              value: unselect,
                              onChanged: (val){
                            setState(() {
                              unselect =val!;
                            });

                              }

                          )
                        ],
                      ),
                      Text(
                        'Design Registration Screen',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,fontFamily: 'Poppins',
                          color: Color(0xFF1B2637),
                          fontSize: 12,
                        ),
                      ),
                    ],
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
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.green,
                              value: unselect,
                              onChanged: (val){
                            setState(() {
                              unselect =val!;
                            });

                              }

                          )
                        ],
                      ),
                      Text(
                        'Design Registration Screen',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,fontFamily: 'Poppins',
                          color: Color(0xFF1B2637),
                          fontSize: 12,
                        ),
                      ),
                    ],
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
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.green,
                              value: unselect,
                              onChanged: (val){
                            setState(() {
                              unselect =val!;
                            });

                              }

                          )
                        ],
                      ),
                      Text(
                        'Design Registration Screen',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,fontFamily: 'Poppins',
                          color: Color(0xFF1B2637),
                          fontSize: 12,
                        ),
                      ),
                    ],
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
