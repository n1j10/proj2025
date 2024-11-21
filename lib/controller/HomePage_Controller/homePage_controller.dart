

import 'package:allahoakbar/UI/Dashboard/PendingPage.dart';
import 'package:allahoakbar/UI/HomePage/HomePage.dart';
import 'package:allahoakbar/UI/HomePage/SettingView.dart';
import 'package:allahoakbar/UI/HomePage/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomNavBar extends GetxController{
  RxInt selectedindex = 0.obs;

  RxList<Widget> Botttompages=[
    // HomePage(),
    // DashboardHomeView(),
    HomePage(),
    EcommerceAppCard(),
    Profile(),
    SettingView(),
  ].obs;

  RxList<Widget> bnbicon=[
    ImageIcon(AssetImage('SvgIcon/plus.png')),
    ImageIcon(AssetImage('SvgIcon/dashboard.png')),
    ImageIcon(AssetImage('SvgIcon/profile.png')),
  ].obs;

  RxList<Text> iconlable=[
    Text('Home'),
    Text('Dashboard'),
    Text('Profile'),
    Text('Setting'),
  ].obs;


  void Onitemselected(int index){
    selectedindex.value = index;
  }


}