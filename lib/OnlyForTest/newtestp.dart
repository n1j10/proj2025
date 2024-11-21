
import 'package:allahoakbar/OnlyForTest/listlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../CustomWidgets/CustomProgressIndcator.dart';
import 'package:get/get.dart';

import '../controller/projectDuration_controller.dart';
import 'package:container_tab_indicator/container_tab_indicator.dart';

class Newtestp extends StatefulWidget {
  const Newtestp({super.key});

  @override
  State<Newtestp> createState() => _NewtestpState();
}

class _NewtestpState extends State<Newtestp> {
  DurationController controller = Get.put(DurationController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      ///Create a project *******
      appBar: AppBar(
        leading: GestureDetector(onTap: () {},
          child: ImageIcon(AssetImage('images/arrowleft.png'), size: 50.0, // Set the desired size
          ),
        ),
        title: Text('Create a project', style: TextStyle(
          fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 24, color: Color(0xFF0D0D0D),
        ),
        ),
        automaticallyImplyLeading: true,
      ),
      body: Container(
          child: Center(
            child: HomeScreen(),
          ),
      )

    );
  }
}
