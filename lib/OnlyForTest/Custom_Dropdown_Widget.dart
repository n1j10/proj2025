import 'package:flutter/material.dart';

class CenteredTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: TabBar(
            tabAlignment: TabAlignment.center, // Center the tabs
            tabs: [
              Container(
                width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xFF8297B7),

                  ),
                  child: Tab(text: 'All')),
              Tab(text: 'Completed'),
              Tab(text: 'Pending'),
              Tab(text: 'InProgress'),
            ],
          ),
        ),


        // body: TabBarView(
        //   children: [
        //     Center(child: Text('Content 1')),
        //     Center(child: Text('Content 2')),
        //     Center(child: Text('Content 3')),
        //   ],
        // ),   ///
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// class CustomCardTask extends StatelessWidget {
//    CustomCardTask ({super.key,});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 22,right: 22,top: 22),
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
//             decoration: BoxDecoration(
//               color: Color(0xFF007AFF),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Container(
//               width: 345,
//               height: 159,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Task 1',
//                         style: TextStyle(
//                           fontFamily: 'Source Sans Pro',
//                           fontWeight: FontWeight.w700,
//                           color: Color(0xFF1B2637),
//                           fontSize: 18,
//                           height: 1.25,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.access_time,
//                             size: 20,
//                             color: Color(0xFF808080),
//                           ),
//                           SizedBox(width: 4),
//                           Text(
//                             '13 Hours',
//                             style: TextStyle(
//                               fontFamily: 'Source Sans Pro',
//                               fontWeight: FontWeight.w400,
//                               color: Color(0xFF808080),
//                               fontSize: 12,
//                               height: 1.5,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 12),
//                   Text(
//                     'Task Name',
//                     style: TextStyle(
//                       fontFamily: 'Source Sans Pro',
//                       fontWeight: FontWeight.w700,
//                       color: Color(0xFF1B2637),
//                       fontSize: 16,
//                       height: 1.25,
//                     ),
//                   ),
//                   SizedBox(height: 4),
//                   Text(
//                     'short  Description about the task ',
//                     style: TextStyle(
//                       fontFamily: 'Source Sans Pro',
//                       fontWeight: FontWeight.w400,
//                       color: Color(0xFF808080),
//                       fontSize: 16,
//                       height: 1.5,
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Container(
//                           height: 8,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4),
//                             color: Colors.grey[300],
//                           ),
//                           child: FractionallySizedBox(
//                             alignment: Alignment.centerLeft,
//                             widthFactor: 0.5, // 50% progress
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(4),
//                                 color: Colors.orange,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 12),
//                       Icon(
//                         Icons.check_circle,
//                         color: Colors.grey,
//                         size: 32,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//
//
//
//     );
//
//   }
// }