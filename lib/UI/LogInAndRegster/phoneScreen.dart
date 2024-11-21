
import 'package:allahoakbar/UI/LogInAndRegster/Verify_Phone.dart';
import 'package:allahoakbar/controller/phone_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../CustomWidgets/CustomProgressIndcator.dart';
import '../../core/Server.dart';


class PhoneScreen extends StatefulWidget {
  @override
  _PhoneScreenState createState() => _PhoneScreenState();
}
class _PhoneScreenState extends State<PhoneScreen> {
  MyApi myApi = MyApi();

  final PhoneController _phoneController = Get.put(PhoneController());
  // final TextEditingController _phoneController = TextEditingController();
//  final TextEditingController _countryCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomStepProgress(totalSteps: 3, currentStep: 1),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 0,right: 122),
              child: Text(
                'Enter Your Phone\n'
                    "Number",style: TextStyle(color: Color(0xFF000000),fontSize:32,fontFamily:'Poppins',fontWeight: FontWeight.bold  )

              ),
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 0,right: 111),
              child: Text(
                'Enter your phone number to verify your\n'
                    'identity and the validity of your number to\n'
                    'safely activate your account on the\n'
                    'platform.',style: TextStyle(color: Color(0xFF999999)),
              ),
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left:0,right: 268,top: 40,bottom: 20),
              child: Text('Phone Number',style: TextStyle(color: Color(0xFF0A0A0A),fontSize:16,fontFamily:'Poppins',fontWeight: FontWeight.bold  ),

              ),
            ),
            Row(
                children: [
                  // Country Code TextField (smaller)
                  Container(
                    width: 95, // Set width for the country code field
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(

                        hintText: "+964",hintStyle: TextStyle(color: Colors.black,fontSize: 15),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left:5,right: 10 ,bottom: 0 ), // Optional: Adjust padding
                          child: Image.asset(
                            'images/iraq.png',
                            width: 5, // Adjust width as needed
                            height: 2,
                            // fit: BoxFit.contain,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(8)


                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16), // Space between country code and phone number fields
                  // Phone Number TextField
                  Expanded(
                    child: Obx(() => TextFormField(
                      controller: TextEditingController(text: _phoneController.phoneNumber.value),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        _phoneController.phoneNumber.value = value;
                        _phoneController.validatePhoneNumber(); // Validate phone number
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Your Phone Number",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFF3C97AF)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    )),
                  ),
                ]
            ),
            const SizedBox(height: 260),

            SizedBox(
              height: 50,
              width: 345,
              child: Obx(() => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                  backgroundColor: _phoneController.isButtonEnabled.value
                      ? Color(0xFF3C97AF)
                      : Colors.grey, // Button color based on validation
                ),
                onPressed: _phoneController.isButtonEnabled.value
                    ? () {
                  String phoneNumber = _phoneController.phoneNumber.value;
                  String countryCode = _phoneController.countryCode.value;
                  print("Country Code: $countryCode, Phone Number: $phoneNumber");

                  ///GoTO VerifyPage*************************
                   Get.to(Verifyphone());
                  _phoneController.myApi;

                }
                    : null, // Disable the button if phone number is invalid
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Send verification code",style: TextStyle(color: Colors.white),

                    ),
                  ],
                ),
              )),
            ),




          ],
        ),
      ),
    );
  }
}