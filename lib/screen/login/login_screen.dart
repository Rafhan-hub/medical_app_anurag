import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/bottom_nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.asset('assets/login.jpeg'),
          // Phone number textfield
          Material(
            child: Center(
              child: SizedBox(
                  width: Get.width * 0.9,
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    onTap: () {},
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(18.0),
                      hintText: 'Enter Phone number',
                      // add here
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      prefixIcon: CountryCodePicker(
                        onChanged: (element) {
                          debugPrint('selected ${element.dialCode}');
                        },
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: '+91',
                        showFlag: true,
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.teal.shade200, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.teal.shade200, width: 1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )),
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: Get.width * 0.9,
            height: 70,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const BottomNavigationBarScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey, // Color of the button
                foregroundColor: Colors.white, // Color of the text
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text(
                'Send OTP',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
