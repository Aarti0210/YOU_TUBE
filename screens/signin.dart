import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:you_tube/colors/app_colors.dart';
import 'package:you_tube/controller/signcon.dart'; // Ensure this path is correct
import 'package:you_tube/routes/App_Routes.dart';
import 'package:you_tube/routes/app_routes.dart' hide AppRoutes; // Ensure this path is correct

class SignInScreen extends StatelessWidget { // Renamed class for better clarity (was 'sign')
  SignInScreen({super.key});

  // GetX controller instance - this is crucial for proper state management
  final signUpCon = Get.put(SignUpScreenCon());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondarycolor, // Consistent background color
      appBar: AppBar(
        backgroundColor: AppColors.secondarycolor,
        elevation: 0,
        title: const Text("Sign Up", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Form(
        key: signUpCon.formKey, // Use the formKey from the controller
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0), // Consistent padding
          child: ListView( // Changed Column to ListView for scrollability
            children: [
              const SizedBox(height: 50),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://yt3.googleusercontent.com/Bg5wS82KGryRmcsn1YbPThtbXoTmj2XJ9_7LmuE2RF6wbKJBkovfRypbSz6UD3gEu_nHiwGZtQ=s900-c-k-c0x00ffffff-no-rj",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Create your Youtube account",
                style: TextStyle(
                  color: AppColors.subtext, // Adjusted color for better contrast
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              // Username Field
              const Text("Username", style: TextStyle(color: Colors.white)),
              const SizedBox(height: 5),
              TextFormField(
                style: TextStyle(color: AppColors.subtext),
                controller: signUpCon.nameCtrl, // Use the controller instance
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.person, color: Colors.grey), // Added color for icon
                  hintText: "Enter your username",
                  hintStyle: TextStyle(color: AppColors.subtext),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Username can't be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // Email Field
              const Text("Email", style: TextStyle(color: Colors.white)),
              const SizedBox(height: 5),
              TextFormField(
                style: TextStyle(color: AppColors.subtext),
                controller: signUpCon.emailCtrl, // Use the controller instance
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.mail, color: Colors.grey), // Added color for icon
                  hintText: "Enter your email",
                  hintStyle: TextStyle(color: AppColors.subtext),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Email can't be empty";
                  }
                  if (!GetUtils.isEmail(value)) { // Using GetUtils for email validation
                    return "Enter a valid email address";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // Password Field
              const Text("Password", style: TextStyle(color: Colors.white)),
              const SizedBox(height: 5),
              Obx( // Wrap with Obx for reactive visibility toggle
                () => TextFormField(
                  style: TextStyle(color: AppColors.subtext),
                  controller: signUpCon.passwordCtrl, // Use the controller instance
                  obscureText: signUpCon.obscurePassword.value, // Control visibility
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(Icons.lock, color: Colors.grey), // Added color for icon
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: AppColors.subtext),
                    suffixIcon: IconButton(
                      icon: Icon(
                        signUpCon.obscurePassword.value
                            ? Icons.visibility_off
                            : Icons.remove_red_eye,
                        color: signUpCon.obscurePassword.value
                            ? const Color.fromARGB(255, 138, 144, 155)
                            : AppColors.primarycolor,
                      ),
                      onPressed: signUpCon.togglePasswordVisibility, // Call toggle method
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Password can't be empty";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20),
              // Confirm Password Field
              const Text("Confirm Password", style: TextStyle(color: Colors.white)),
              const SizedBox(height: 5),
              Obx( // Wrap with Obx for reactive visibility toggle
                () => TextFormField(
                  style: TextStyle(color: AppColors.subtext),
                  controller: signUpCon.confirmPasswordCtrl, // Use the controller instance
                  obscureText: signUpCon.obscureConfirmPassword.value, // Control visibility
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(Icons.lock, color: Colors.grey), // Added color for icon
                    hintText: "Confirm your password",
                    hintStyle: TextStyle(color: AppColors.subtext),
                    suffixIcon: IconButton(
                      icon: Icon(
                        signUpCon.obscureConfirmPassword.value
                            ? Icons.visibility_off
                            : Icons.remove_red_eye,
                        color: signUpCon.obscureConfirmPassword.value
                            ? const Color.fromARGB(255, 138, 144, 155)
                            : AppColors.primarycolor,
                      ),
                      onPressed: signUpCon.toggleConfirmPasswordVisibility, // Call toggle method
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Please confirm your password";
                    }
                    if (value != signUpCon.passwordCtrl.text) { // Corrected comparison
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Obx( // Wrap with Obx for reactive loading state
                  () => ElevatedButton(
                    onPressed: signUpCon.isLoading.value ? null : signUpCon.signUpUser, // Disable button while loading
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primarycolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: signUpCon.isLoading.value
                        ? const CircularProgressIndicator(color: Colors.white) // Show loading indicator
                        : const Text(
                            "Create Account",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Get.offNamed(AppRoutes.login); // Use offNamed to clear stack
                },
                child: Text(
                  "Back to Login",
                  style: TextStyle(color: AppColors.primarycolor, fontSize: 16),
                ),
              ),
               SizedBox(height: 30), // Added some bottom padding
            ],
          ),
        ),
      ),
    );
  }
}
