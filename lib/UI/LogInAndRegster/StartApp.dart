import 'package:allahoakbar/CustomWidgets/CustomProgressIndcator.dart';
import 'package:allahoakbar/CustomWidgets/OptionCard.dart';
import 'package:allahoakbar/UI/LogInAndRegster/phoneScreen.dart';
import 'package:allahoakbar/controller/Chose_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}
class _StartScreenState extends State<StartScreen> {
  final SelectionController controller = Get.put(SelectionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CustomStepProgress(totalSteps: 3, currentStep: 1),

            const SizedBox(height: 30),
            Text(
              "Let's Get Started!",style: TextStyle(fontWeight:FontWeight.w800,fontFamily: 'Poppins',fontSize: 32 ),
            ),
            const SizedBox(height: 8),
            Text(
              "How do you plan to use this platform",style: TextStyle(fontWeight:FontWeight.w800,fontFamily: 'Poppins',fontSize: 16 ),

            ),
            const SizedBox(height: 50),

            Obx(() => OptionCard(
              title: 'Freelancer',
              description: "I'm a freelancer ready to work for projects",
              icon: Icons.person_outline,
              isSelected: controller.selectedOption.value == 0,
              backgroundColor: Colors.red, // Change the color based on selection
              onTap: () {
                controller.selectOption(0);
              },
            )),
            ///I'm a client
            const SizedBox(height: 16),
            Obx(() => OptionCard(
              title: 'Client',
              description: "I'm a client searching for talented freelancers",
              icon: Icons.person_search_outlined,
              isSelected: controller.selectedOption.value == 1,
               backgroundColor: controller.selectedOption.value == 1 ? Colors.white : Colors.grey, // Change the color based on selection
              onTap: () {
                controller.selectOption(1);
              },
            )
            ),



            ///Next Button
            SizedBox(
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: SizedBox(
                      width: 345,
                      height: 50,
                      child: Obx(() => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          backgroundColor: controller.isOptionSelected
                              ? const Color(0xFF3C97AF)
                              : Colors.grey,
                        ),
                        onPressed: controller.isOptionSelected
                            ? () {
                          print("Selected option: ${controller.selectedOption.value}");
                          Get.to(PhoneScreen());
                        }
                            : null,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                          "Next",style: TextStyle(fontWeight:FontWeight.w800,fontFamily: 'Poppins',fontSize: 18,color: Colors.white ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white, size: 16,
                            ),
                          ],
                        ),
                      )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}