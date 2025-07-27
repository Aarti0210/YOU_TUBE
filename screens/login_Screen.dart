




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:you_tube/colors/app_colors.dart';
import 'package:you_tube/controller/loginscreencon.dart';
import 'package:you_tube/routes/app_routes.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final logincon = Get.put(LoginCon());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppColors.secondarycolor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: logincon.formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                const SizedBox(height: 100),
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/youtubeimg.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text("Enter your email", style: TextStyle(color: Colors.white)),
                const SizedBox(height: 5),
                TextFormField(
                  controller: logincon.emailCtrl,
                  style: TextStyle(color: AppColors.subtext),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    hintText: "Enter email address",
                    hintStyle: TextStyle(color: AppColors.subtext),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) return "Email can't be empty";
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                      return "Enter valid Email";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                const Text("Enter Password", style: TextStyle(color: Colors.white)),
                const SizedBox(height: 5),
                TextFormField(
                  controller: logincon.passwordCtrl,
                  obscureText: logincon.obscurePassword.value,
                  style: TextStyle(color: AppColors.subtext, fontSize: 18),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    hintText: "Enter Password",
                    hintStyle: TextStyle(color: AppColors.subtext),
                    suffixIcon: IconButton(
                      onPressed: logincon.togglePasswordVisibility,
                      icon: Icon(
                        logincon.obscurePassword.value ? Icons.visibility_off : Icons.remove_red_eye,
                        color: logincon.obscurePassword.value
                            ? const Color.fromARGB(255, 138, 144, 155)
                            : AppColors.primarycolor,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) return "Enter password";
                    if (value.length < 6) return "Password must be at least 6 characters";
                    return null;
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => Get.toNamed(AppRoutes.forgot),
                    child: const Text("Forgot password?", style: TextStyle(color: Colors.blue)),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (logincon.formKey.currentState!.validate()) {
                          logincon.loginUser();
                        }
                      },
                      style: ElevatedButton.styleFrom(minimumSize: const Size(120, 40)),
                      child: logincon.isLoading.value
                          ? const CircularProgressIndicator(color: Colors.white, strokeWidth: 2)
                          : const Text("Login"),
                    ),
                    const SizedBox(width: 15),
                    OutlinedButton(
                      onPressed: () => Get.toNamed(AppRoutes.sign),
                      child: const Text("Sign in"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
