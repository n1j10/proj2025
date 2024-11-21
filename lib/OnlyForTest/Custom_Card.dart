import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key, required this.titleText,
    required this.txt,
    required this.icon,
    required this.subtxt,
    required this.subtxt2,
    // required this.isActive,
    // this.onTap
  }) : super(key: key);
  final String titleText;
  final String txt;
  final IconData icon;
  final String subtxt;
  final String subtxt2;
  // final bool isActive;
  // final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return   Column(
        children: [
          Container(
            // color: isActive==true ? Colors.lightBlueAccent:Colors.white,
            child:Column(
              children: [ Container(
                child: Row(
                    children: [
                      Padding(padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                        child: Text(
                          titleText,
                          style: const TextStyle(color: Colors.black, fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(left: 155,top: 10),
                        child: Icon(icon,size: 20,
                          color: Color(0xFF808080),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15,top: 10),
                        child: Text(
                          subtxt,
                          style: const TextStyle(color: Color(0xFF808080), fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),


                Padding(
                  padding: const EdgeInsets.only(right: 75,top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                         Text(
                          txt,
                          style: const TextStyle(fontSize: 16,
                          ),
                        ),
                         SizedBox(height: 10,),
                         Text(
                          subtxt2,
                          style: const TextStyle(fontSize: 16,
                          ),
                        ),
                    ],
                  ),
                ),
                ///Orange Line --------
                Padding(
                  padding: const EdgeInsets.only(right: 10,top: 7),
                  child: Container(
                    width: 300,
                    child: Row(
                    children: [
                        Expanded(
                          child: Container(
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey[300],
                            ),
                            child: FractionallySizedBox(
                              alignment: Alignment.centerLeft,
                              widthFactor: 0.5,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Icon(Icons.check_circle,
                        ),

                      ],
                    ),
                  ),
                ),
              ] ,
            ),
          ),
        ],
      );

  }
}

///call in view page
//Container(
//         decoration: BoxDecoration(
//           color: Colors.cyanAccent,
//         ),
//         width: 345,
//         height: 160,
//         child:
//         CustomCardC(
//           titleText: 'Task 1',
//           txt: 'Task Name',
//           icon: Icons.access_time,
//           subtxt: '13 Hours',
//           subtxt2: 'short  Description about the task',
//         ),
//
//       ),