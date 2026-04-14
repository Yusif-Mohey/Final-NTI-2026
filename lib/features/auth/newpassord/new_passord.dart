import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/custom_app_button.dart';

import 'package:flutter_application_1/shared/custom_text_form_filed.dart';
import 'package:gap/gap.dart';

class NewPassord extends StatefulWidget {
  const NewPassord({super.key});

  @override
  State<NewPassord> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<NewPassord> {
  final _formkey = GlobalKey<FormState>();
  final _confirmPasswordController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  void dispose() {
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
      
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "New Password  ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Gap(10),
                Center(
                  child: Text(
                    "Your New password must be deffrint! from previously used password ",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Gap(30),
      
                Column(
                  children: [
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          CustomTextFormField(
                            obscurePassword: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password can't be empty";
                              }
                              return null;
                            },
                            hintText: "Password",
                            controller: _passwordController,
                          ),
                          Gap(30),
                          CustomTextFormField(
                            obscurePassword: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Confirm Password can't be empty";
                              }
                              return null;
                            },
                            hintText: "Confirm Password",
                            controller: _confirmPasswordController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(30),
      
                // ElevatedButton(
                //   onPressed: () {
      
                //   },
                //   child:
                CustomAppButton(
                  text: "Create New Password",
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                     
                      print("Valid");
                    }
                  },
                ),
      
                // child: SizedBox(
      
                //   width: double.infinity,
                //   child: Column(children: [Text("Create New Password")]),
                // ),
                //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
