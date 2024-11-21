import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Centered Tab Bar
            TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                shape: BoxShape.rectangle,
                  color: Colors.green[300],
                  borderRadius:  BorderRadius.circular(5.0),
              ), // No indicator
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Profile'),
                Tab(text: 'Settings'),
                Tab(text: 'Logout'),
              ],
            ),
            // Tab Bar View
            Container(
              height: 200, // Set height for TabBarView
              child: TabBarView(
                controller: _tabController,
                children: [
                  Center(child: Text('Home Content')),
                  Center(child: Text('Profile Content')),
                  Center(child: Text('Settings Content')),
                  Center(child: Text('Logout Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}








































// import 'package:allahoakbar/CustomWidgets/Custom_TabBar_Widget.dart';
// import 'package:allahoakbar/CustomWidgets/DashBoard_Wiget/Custom_E_commerce_Card.dart';
// import 'package:flutter/material.dart';
// import 'package:buttons_tabbar/buttons_tabbar.dart';
//
//
// class testerr extends StatefulWidget {
//   const testerr({super.key});
//   @override
//   State<testerr> createState() => _testerrState();
// }
// class _testerrState extends State<testerr> {
//   List<String>list=["ToDo","InPreqes","InRriew","Done"];
//   int isCurrent = 0 ;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Center(
//         child: Container(
//           width: 345,
//           height: 43,
//           decoration: BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.circular(25)
//           ),
//           child: Column(
//             children: [
//               // SizedBox(height: 100,),
//               Row(
//                 children: [
//
//                   ///list.genrate
//                   // ...List.generate(4, (index){
//                   //   return InkWell(onTap: (){
//                   //     setState(() {
//                   //       isCurrent=index;
//                   //     });
//                   //   },
//                   //     child: CustomTabt(title: list[index],
//                   //       isActive: index==isCurrent?true:false
//                   //     ),
//                   //   );
//                   // }
//                   // ),
//
//                 ],
//               ),
//             ],
//           ),
//         ),
//       )
//
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
