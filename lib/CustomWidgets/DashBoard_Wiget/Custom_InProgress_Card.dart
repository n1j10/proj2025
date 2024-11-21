import 'package:flutter/material.dart';

class CustomInProgressCard extends StatefulWidget {
  const CustomInProgressCard({super.key});

  @override
  State<CustomInProgressCard> createState() => _CustomInProgressCardState();
}

class _CustomInProgressCardState extends State<CustomInProgressCard> {
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
                    padding: const EdgeInsets.only(top: 15),
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
                    padding: const EdgeInsets.only(top: 15),
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
                    padding: const EdgeInsets.only(top: 15),
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
