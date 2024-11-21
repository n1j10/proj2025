import 'package:allahoakbar/core/Server.dart';
import 'package:get/get.dart';
class PhoneController extends GetxController {
  MyApi myApi=MyApi();
  var countryCode = '+1'.obs; // Reactive variable for the country code
  var phoneNumber = ''.obs; // Reactive variable for the phone number
  var isButtonEnabled = false.obs; // Reactive variable to enable/disable button

  /// Method to validate phone number
  void validatePhoneNumber() {
    /// Check if number has exactly 11 digits
    if (phoneNumber.value.length == 11) {
      isButtonEnabled.value = true; /// Enable the button if phone number has 11 digits
    } else {
      isButtonEnabled.value = false; /// Disable the button if phone number is not exactly 11 digits
    }
  }
}