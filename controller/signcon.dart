import 'package:get/get.dart';

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:you_tube/api/app_api.dart';
// import 'package:you_tube/api/app_api.dart'; // You might want to define signup URL here
import '../routes/App_Routes.dart'; // Assuming you have AppRoutes defined

class SignUpScreenCon extends GetxController {
  var isLoading = false.obs;
  var obscurePassword = true.obs; // For password visibility
  var obscureConfirmPassword = true.obs; // For confirm password visibility

  final formKey = GlobalKey<FormState>();
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final confirmPasswordCtrl = TextEditingController();

  // Toggles password visibility for the password field
  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  // Toggles password visibility for the confirm password field
  void toggleConfirmPasswordVisibility() {
    obscureConfirmPassword.value = !obscureConfirmPassword.value;
  }

  Future<void> signUpUser() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    // Basic password matching check
    if (passwordCtrl.text != confirmPasswordCtrl.text) {
      Get.snackbar(
        "Error",
        "Passwords do not match",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }

    isLoading.value = true;
    try {
      final response = await http.post(
        Uri.parse(BaseUrl.signupUrl), // Your Flask signup endpoint
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "name": nameCtrl.text.trim(),
          "email": emailCtrl.text.trim(),
          "password": passwordCtrl.text.trim(),
        }),
      );

      if (response.statusCode == 201) {
        // 201 Created is typically used for successful resource creation
        final data = jsonDecode(response.body);
        Get.snackbar(
          "Success",
          data['message'] ?? "User registered successfully",
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        // Optionally navigate to login screen or home
        Get.offNamed(AppRoutes.login); // Assuming you have a login route
      } else {
        final error = jsonDecode(response.body);
        Get.snackbar(
          "Sign Up Failed",
          error['message'] ?? 'Unknown error',
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        "An error occurred: ${e.toString()}",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    nameCtrl.dispose();
    emailCtrl.dispose();
    passwordCtrl.dispose();
    confirmPasswordCtrl.dispose();
    super.onClose();
  }
}