// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:you_tube/api/app_api.dart';
// import 'package:you_tube/modal/loginResponse.dart';

// import '../routes/App_Routes.dart';

// class LoginScreenCon extends GetxController {
//   var isLoading = false.obs;
//   var obscure = true.obs;

//   final formKey = GlobalKey<FormState>();
//   final emailCtrl = TextEditingController();
//   final passwordCtrl = TextEditingController();

//   void togglePasswordVisibility() {
//     obscure.value = !obscure.value;
//   }

//   Future<void> loginUser() async {
//     if (!formKey.currentState!.validate()) return;

//     isLoading.value = true;
//     try {
//       final response = await http.post(
//         Uri.parse("https://krushimahostav.yuvapsvs.com/api/auth/login"),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({
//           "email": emailCtrl.text.trim(),
//           "password": passwordCtrl.text.trim(),
//         }),
//       );

//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         final loginData = Loginresponse.fromJson(data);

//         SharedPreferences prefs = await SharedPreferences.getInstance();
//         await prefs.setString('token', loginData.token ?? "");

//        Get.snackbar(
//           "Success",
//           loginData.message ?? "Login successful", // Using message from response
//           backgroundColor: Colors.green,
//           colorText: Colors.white,
//         );
//         Get.offNamed(AppRoutes.Tabs); 
//       } else {
//         final error = jsonDecode(response.body);
//         Get.snackbar("Login Failed", error['message'] ?? 'Unknown error');
//       }
//     } catch (e) {
//       Get.snackbar("Error", e.toString());
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }
// import 'dart:convert'; // For encoding and decoding JSON data
// import 'package:flutter/material.dart'; // Flutter UI toolkit
// import 'package:get/get.dart'; // GetX package for state management and navigation
// import 'package:http/http.dart' as http; // For making HTTP requests
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:you_tube/modal/loginResponse.dart';

// import '../routes/app_routes.dart'; // App route paths

// class LoginScreenCon extends GetxController {

//   final formKey = GlobalKey<FormState>();
//   var isLoading = false.obs; // Reactive variable to track loading state

//   final emailCtrl = TextEditingController(); // Controller to manage email input
//   final passwordCtrl =
//       TextEditingController(); // Controller to manage password input

//   // Method to handle user login
//   Future<void> loginUser() async {
//     isLoading.value =
//         true; // Set loading state to true to show progress indicator

//     try {
//       // Make a POST request to the login API
//       final response = await http.post(
//         Uri.parse("https://krushimahostav.yuvapsvs.com/api/auth/login"), // Convert URL string to URI
//         headers: {
//           'Content-Type': 'application/json', // ✅ Add this
//         },
//         body: jsonEncode({
//           "email": emailCtrl.text.trim(), // Send email as JSON
//           "password": passwordCtrl.text.trim(), // Send password as JSON
//         }),
//       );

//       // If login is successful (status code 200)
//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body); // Decode JSON response
//         final loginData = Loginresponse.fromJson(
//           data,
//         ); // Convert to LoginResponse model

//         // You can store token or user info here using SharedPreferences or GetStorage if needed

//         Get.snackbar(
//           "Success",
//           "Login successful",
//           backgroundColor: Colors.green,
//         ); // Show success message
//         // Navigator.pushNamed(context, AppRoutes.tabs);

//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       await prefs.setString('token', loginData.token ?? "");
 

//         Get.offNamed(AppRoutes.Tabs); // Navigate to home screen (tabs page)
//       } else {
//         // If login failed, show error message
//         final error = jsonDecode(response.body); // Decode error response
//         Get.snackbar(
//           "Login Failed",
//           error['message'] ?? 'Unknown error',
//         ); // Show failure message
//       }
//     } catch (e) {
//       // Catch any other exceptions (e.g., network issues)
//       Get.snackbar("Error", e.toString()); // Show exception message
//     } finally {
//       isLoading.value = false; // Stop loading indicator
//     }
//   }
// }
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_tube/modal/loginResponse.dart';
import 'package:you_tube/routes/app_routes.dart';



class LoginCon extends GetxController {
  var isLoading = false.obs;
   var obscurePassword = true.obs;
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
   final formKey = GlobalKey<FormState>();

   void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;

  }
   

  
  Future<void> loginUser() async {
    
    isLoading.value = true;
    try {
      final response = await http.post(
        Uri.parse("https://krushimahostav.yuvapsvs.com/api/auth/login"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "email": emailCtrl.text.trim(),
          "password": passwordCtrl.text.trim(),
        }),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body); 
        final loginData = Loginresponse.fromJson(
          data,
        ); 

        Get.snackbar(
          "Success",
          "Login successful✅✅",
          backgroundColor: const Color.fromARGB(60, 249, 247, 247),
        );
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', loginData.token ?? "");

        Get.offNamed(AppRoutes.Tabs); 
      } else {
        
        final error = jsonDecode(response.body); 
        Get.snackbar(
          "Login Failed❌❌",
          error['message'] ?? 'Unknown error',
        ); 
      }
    } catch (e) {
      
      Get.snackbar("Error", e.toString()); 
    } finally {
      isLoading.value = false;
    }
  }
}