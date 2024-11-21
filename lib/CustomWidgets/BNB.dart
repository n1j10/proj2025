import 'package:allahoakbar/UI/CreateProj/SelectFrontorBackEnd.dart';
import 'package:allahoakbar/controller/HomePage_Controller/homePage_controller.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bnb extends StatefulWidget {
  const Bnb({super.key});

  @override
  State<Bnb> createState() => _BnbState();
}
class _BnbState extends State<Bnb> {
  BottomNavBar bottomcontrol =Get.put(BottomNavBar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Obx(()=>IndexedStack(
          index: bottomcontrol.selectedindex.value,
          children:bottomcontrol.Botttompages,
        ),
        ),
        floatingActionButton:
        FloatingActionButton(onPressed: (){
          Get.to(SelectOption());
        },
          child: ImageIcon(AssetImage('SvgIcon/plus.png'),
          ),
          backgroundColor:  Color(0xff3C97AF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(1000),

          ),
          elevation: 1,

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar:
        Obx(()=>
            AnimatedBottomNavigationBar(
                notchMargin: 14,
                height: 92,
                icons: [
                  Icons.home,
                  Icons.dashboard,
                  Icons.supervised_user_circle,
                  Icons.settings,
                ],
                activeIndex: bottomcontrol.selectedindex.value,
                gapLocation: GapLocation.center,
                activeColor: Color(0xff1C4752),
                inactiveColor: Color(0xffF8FBFC),
                backgroundColor:Color(0xffA0D2DF) ,
                splashColor:Color(0xffA0D2DF) ,

                onTap: bottomcontrol.Onitemselected),)

    );
  }
}