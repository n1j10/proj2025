import 'package:allahoakbar/CustomWidgets/DashBoard_Wiget/Custom_Checked_Card.dart';
import 'package:allahoakbar/CustomWidgets/DashBoard_Wiget/Custom_E_commerce_Card.dart';
import 'package:allahoakbar/CustomWidgets/DashBoard_Wiget/Custom_InProgress_Card.dart';
import 'package:allahoakbar/CustomWidgets/DashBoard_Wiget/Custom_UnCheck_Card.dart';
import 'package:flutter/material.dart';

class ListTabs extends StatefulWidget {
  const ListTabs({super.key});

  @override
  State<ListTabs> createState() => _ListTabsState();
}
class _ListTabsState extends State<ListTabs> {
  String selectedPricingType = 'Per Hour';
  final TextEditingController durationController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Container(
            width: 375,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(26)
            ),
            child:Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectedPricingType = 'To DO';
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: selectedPricingType == 'To DO'
                          ? Color(0xFF3C97AF)
                          : Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                    child: Text('To Do',
                      style: TextStyle(
                        fontSize: 12,
                        color: selectedPricingType == 'To DO'
                            ? Colors.white
                            : Color(0xFFD9D9D9),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectedPricingType = 'In Progress';
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: selectedPricingType == 'In Progress'
                          ? Color(0xFF3C97AF)
                          : Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                    child: Text(
                      'InProgress',
                      style: TextStyle(
                        fontSize: 12,
                        color: selectedPricingType == 'In Progress'
                            ? Colors.white
                            : Color(0xFFD9D9D9),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectedPricingType = 'In Review';
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: selectedPricingType == 'In Review'
                          ? Color(0xFF3C97AF)
                          : Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                    child: Text(
                      'In Review',
                      style: TextStyle(
                        fontSize: 12,
                        color: selectedPricingType == 'In Review'
                            ? Colors.white
                            : Color(0xFFD9D9D9),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectedPricingType = 'Done';
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: selectedPricingType == 'Done'
                          ? Color(0xFF3C97AF)
                          : Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: selectedPricingType == 'Done'
                            ? Colors.white
                            : Color(0xFFD9D9D9),
                      ),
                    ),
                  ),
                ),
              ],
            ) ,
          ),
          SizedBox(height: 16),


          ///List of TabBar in To Do Screen
          Column(
            children: [
              selectedPricingType == 'To DO'
                  ? CustomToDoCard()
                  : selectedPricingType == 'In Progress'
                  ? CustomInProgressCard()
                  : selectedPricingType == 'In Review'
                  ? CustomUncheckCard()
                  : CustomCheckedCard(),
            ],
          ),
        ],
      ),
    );
  }
}







































// import 'package:flutter/material.dart';
//
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//           appBar: AppBar(
//             title: Text("Flutter TabBar Example - Customized "),
//           ),
//           body: Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Container(
//                   height: 45,
//                   decoration: BoxDecoration(
//                       color: Colors.grey[300],
//                       borderRadius: BorderRadius.circular(25.0)
//                   ),
//                   child:  TabBar(
//                     indicator: BoxDecoration(
//                         color: Colors.green[300],
//                         borderRadius:  BorderRadius.circular(25.0)
//                     ) ,
//                     labelColor: Colors.white,
//                     unselectedLabelColor: Colors.black,
//                     tabs: const  [
//                       Tab(text: 'Chats',),
//                       Tab(text: 'Status',),
//                       Tab(text: 'Calls',),
//                       Tab(text: 'Settings',)
//                     ],
//                   ),
//                 ),
//                 const Expanded(
//                     child: TabBarView(
//                       children:  [
//                         Center(child: Text("Chats Pages"),),
//                         Center(child: Text("Status Pages"),),
//                         Center(child: Text('Calls Page'),),
//                         Center(child: Text('Settings Page'),)
//                       ],
//                     )
//                 )
//               ],
//             ),
//           )
//       ),
//     );
//   }
// }




