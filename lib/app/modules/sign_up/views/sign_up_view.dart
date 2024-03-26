import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../configs/constants.dart';
import '../../../util/customtext.dart';
import '../../../util/customtextfield.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daystar University App"),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
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
                      label: "Registration Screen",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                // Your registration form fields here...
                CustomText(label: "First name"),
                CustomTextField(
                  controller: controller.firstNameController,
                  hintMessage: "Enter first name",
                  icon: Icons.person_add,
                ),
                // More form fields...
                SizedBox(
                  height: 30,
                ),
                CustomText(label: "Second name"),
                // TextField(),
                CustomTextField(
                  controller: controller.secondNameController,
                  hintMessage: "Enter second name",
                  icon: Icons.person_add_alt_1,

                  //icon: Icons.lock,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(label: "Phone number"),
                // TextField(),
                CustomTextField(
                  controller: controller.phoneNumberController,
                  hintMessage: "Enter phone number",
                  icon: Icons.phone,

                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(label: "Email address"),
                // TextField(),
                CustomTextField(
                  controller: controller.emailAddressController,
                  hintMessage: "Enter email address",
                  icon: Icons.email,

                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(label: "Password"),
                // TextField(),
                CustomTextField(
                  controller: controller.passwordController,
                  hintMessage: "Enter password",
                  icon: Icons.lock,
                  obscureText: true,
                  isPassword: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(label: "Re-enter Password"),
                // TextField(),
                CustomTextField(
                  controller: controller.confirmPasswordController,
                  hintMessage: "Enter password again",
                  icon: Icons.lock,
                  obscureText: true,
                  isPassword: true,
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    // _register(context);
                    controller.navigatetoHome();
                  },
                  child: Text("Register"),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Login link
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CustomText(label: "Already have an account?"),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: const CustomText(
                        label: "Login",
                        labelColor: primaryColor,
                      ),
                      onTap: () {
                        // Navigate back to the login screen
                       controller.navigatetoSignIn();
                      },
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
