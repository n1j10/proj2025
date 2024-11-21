
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../CustomWidgets/CustomProgressIndcator.dart';
import 'package:get/get.dart';

import '../../controller/projectDuration_controller.dart';
import 'package:container_tab_indicator/container_tab_indicator.dart';

class DurationAndProjPrice extends StatefulWidget {
  const DurationAndProjPrice({super.key});

  @override
  State<DurationAndProjPrice> createState() => _DurationAndProjPriceState();
}

class _DurationAndProjPriceState extends State<DurationAndProjPrice> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomStepProgress(totalSteps: 2, currentStep: 1),
            SizedBox(height: 33,),
            Text('Project Duration',
              style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFF0A0A0A),),
            ),
            SizedBox(height: 5),
            TextFormField(
              decoration: InputDecoration(hintText: 'Duration of the project',
                hintStyle: TextStyle(color: Color(0xFFD9D9D9), fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 14,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Color(0xFFBFBFBF)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ///Price of The Project *******
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Price of The Project',
                  style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFF0A0A0A),),
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Duration of the project',
                    hintStyle: TextStyle(color: Color(0xFFD9D9D9), fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Color(0xFFBFBFBF)),
                    ),
                  ),
                ),
              ],

            ),
            Spacer(),
            ///Add Project ********
            Center(
              child: ElevatedButton(
                onPressed: () {
                   controller.goToDashboardPage();

                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3C97AF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 120.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Add Project',
                      style: TextStyle(
                        fontFamily: 'Exo',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.add, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
