import 'package:allahoakbar/OnlyForTest/InProgress.dart';
import 'package:allahoakbar/OnlyForTest/listlist.dart';
import 'package:allahoakbar/UI/CreateProj/SelectFrontorBackEnd.dart';
import 'package:allahoakbar/UI/HomePage/HomePage.dart';
import 'package:allahoakbar/UI/Dashboard/PendingPage.dart';
import 'package:allahoakbar/UI/HomePage/Notification.dart';
import 'package:allahoakbar/UI/HomePage/SettingView.dart';
import 'package:allahoakbar/UI/HomePage/profile.dart';
import 'package:allahoakbar/UI/LogInAndRegster/StartApp.dart';
import 'package:allahoakbar/UI/Dashboard/ToDo.dart';
import 'package:allahoakbar/OnlyForTest/newtestp.dart';
import 'package:allahoakbar/UI/CreateProj/projectDurationAndPrice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}
