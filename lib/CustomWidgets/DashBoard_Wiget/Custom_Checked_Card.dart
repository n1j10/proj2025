import 'package:flutter/material.dart';

class CustomCheckedCard extends StatefulWidget {
  const CustomCheckedCard({super.key,});

  @override
  State<CustomCheckedCard> createState() => _CustomCheckedCardState();
}
class _CustomCheckedCardState extends State<CustomCheckedCard> {
  bool select = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Color(0xFFF7FDFD), // Color Card Card Card
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: 345,
              height: 50,
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.green,
                        value: select,
                        onChanged: (val) {
                          setState(() {
                            select = val!;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 155,
                                height: 1,
                                color: Colors.black87,
                              ),
                              Text(
                                'Design Registration Screen',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF1B2637),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
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
              color: Color(0xFFF7FDFD), // Color Card Card Card
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: 345,
              height: 50,
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.green,
                        value: select,
                        onChanged: (val) {
                          setState(() {
                            select = val!;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 155,
                                height: 1,
                                color: Colors.black87,
                              ),
                              Text(
                                'Design Registration Screen',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF1B2637),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
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
              color: Color(0xFFF7FDFD), // Color Card Card Card
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: 345,
              height: 50,
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.green,
                        value: select,
                        onChanged: (val) {
                          setState(() {
                            select = val!;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 155,
                                height: 1,
                                color: Colors.black87,
                              ),
                              Text(
                                'Design Registration Screen',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF1B2637),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
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