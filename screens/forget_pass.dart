import 'package:flutter/material.dart';
import 'package:you_tube/colors/app_colors.dart';


// class forget extends StatefulWidget {
//   const forget({super.key});

//   @override
//   State<forget> createState() => _forgetState();
// }

// class _forgetState extends State<forget> {
class forget extends StatelessWidget {
  forget({super.key});

  final _formkey = GlobalKey<FormState>();
  // bool magic = true;
  final TextEditingController emailCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondarycolor,
      // appBar: AppBar(
      //   backgroundColor: AppColors.secondarycolor,
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 10),
      //     child: Image.asset("assets/images/youtubrgif.png"),
      //   ),
      //   title: Text(
      //     "Youtube",
      //     style: TextStyle(
      //       color: const Color.fromARGB(255, 248, 242, 242),
      //       fontWeight: FontWeight.w700,
      //     ),
      //   ),
      // ),
      body: // Padding(
          //   padding: const EdgeInsets.only(top: 90, right: 10, left: 10),
          Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Icon(
                      Icons.lock_outline,
                      color: AppColors.primarycolor,
                      size: 64,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Padding(
                  //padding: const EdgeInsets.only(bottom: 130),
                  Center(
                    child: Text(
                      "Reset Your Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Center(
                    child: Text(
                      "Enter your email address and we'll send you a ",
                      style: TextStyle(color: AppColors.subtext),
                    ),
                  ),

                  Center(
                    child: Text(
                      "link to reset your password",
                      style: TextStyle(color: AppColors.subtext),
                    ),
                  ),

                  TextFormField(
                    style: TextStyle(color: AppColors.subtext),
                    controller: emailCtrl,
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(15),
                      // ),
                      hintText: "Email",
                      hintStyle: TextStyle(color: AppColors.subtext),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "email can not be null";
                      }
                      if (!RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      ).hasMatch(value)) {
                        return "Enter valid Email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    width: double.infinity,

                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primarycolor,
                      ),
                      child: Text(
                        "Send Reset Link",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,

                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondarycolor,
                      ),
                      child: Text(
                        "Back to Login",
                        style: TextStyle(color: AppColors.primarycolor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
