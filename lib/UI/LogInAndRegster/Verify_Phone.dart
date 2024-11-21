import 'package:allahoakbar/CustomWidgets/CustomProgressIndcator.dart';
import 'package:allahoakbar/CustomWidgets/counter.dart';
import 'package:allahoakbar/UI/LogInAndRegster/registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'dart:async';


class Verifyphone extends StatefulWidget {
  const Verifyphone({super.key});

  @override
  State<Verifyphone> createState() => _VerifyphoneState();
}

class _VerifyphoneState extends State<Verifyphone> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  Color pinputColor = Colors.grey;
  Timer? _timer;
  bool _isTimerStopped = false;
  Color messageColor = Colors.grey;
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const duration = Duration(seconds: 32);
    _timer = Timer(duration, _onTimerCompleted);
  }
  void _onTimerCompleted() {
    setState(() {
      _isTimerStopped = true;
       pinputColor = Colors.red;
       messageColor=Colors.red;
    });
  }

  void _onCompleted(String value) {
    setState(() {
      pinputColor = Color(0xFF3C97AF); // Change color when input is completed
    });
  }
  void _onChanged(String value) {
    if (value.length < 6) {
      setState(() {
        pinputColor = Colors.grey; // Reset color if input is edited
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                children: [
                  const CustomStepProgress(totalSteps: 3, currentStep: 2),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, right: 66),
                    child: Text(
                      "Verify phone number",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Poppins',
                          fontSize: 32),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, right: 115),
                    child: Text(
                      'Enter the verification code sent to\n '
                          '+9647700000000 via WhatsApp\n',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xFF999999)),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Pinput(
                    length: 6,
                    defaultPinTheme: PinTheme(
                      height: 60,
                      width: 56,
                      textStyle: TextStyle(
                        fontSize: 22,
                        color: Color(0xFF3C97AF),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: pinputColor),
                      ),
                    ),
                    onCompleted: _onCompleted,
                    onChanged: _onChanged,
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.access_time_rounded,
                        size: 24,
                        color: Color(0xFF3C97AF),
                      ),
                      countimer(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Text and Resend button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive a message?",
                        style: TextStyle(color: messageColor),
                      ),
                      TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          "Resend",style: TextStyle(color: Color(0xFF3C97AF)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 65),
                  SizedBox(
                    height: 50,
                    width: 375,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: const Color(0xFF3C97AF),
                      ),
                      onPressed: () {
                        Get.to(Registerscreen());
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Verify",style: TextStyle(color: Colors.white),

                          ),

                        ],
                      ),


                    ),
                  )


                ]
            )
        )
    );
  }
}