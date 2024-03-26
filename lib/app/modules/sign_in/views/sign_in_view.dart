import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../configs/constants.dart';
import '../../../util/custombutton.dart';
import '../../../util/customtext.dart';
import '../../../util/customtextfield.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daystar University App"),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 120,
                      width: 120,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                      label: "Login Screen",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(label: "Username"),
                CustomTextField(
                  controller: controller.usernameController,
                  hintMessage: "Enter email or phone number",
                  icon: Icons.person,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(label: "Password"),
                CustomTextField(
                  controller: controller.passwordController,
                  hintMessage: "Enter password",
                  icon: Icons.lock,
                  obscureText: true,
                  isPassword: true,
                ),
                SizedBox(
                  height: 10, // Adjusted height
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Add your forgot password logic here
                      },
                      child: CustomText(
                        label: "Forgot password?",
                        fontSize: 14,
                        labelColor: primaryColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        // Add your recover password logic here
                      },
                      child: CustomText(
                        label: "Recover",
                        fontSize: 14,
                        labelColor: primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                customButton(
                  usernameController: controller.usernameController,
                  btnLabel: 'Login',
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to registration screen
                      controller.navigatetoHome();
                    },
                    child: Text('Create an account'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
