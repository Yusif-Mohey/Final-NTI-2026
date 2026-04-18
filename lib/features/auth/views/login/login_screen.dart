import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/shared/custom_app_button.dart';
import 'package:flutter_application_1/core/shared/custom_text_form_filed.dart';
import 'package:flutter_application_1/features/auth/views/signup/signup_screen.dart';
import 'package:flutter_application_1/features/auth/widgets/social_auth.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),

        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Sign in  ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Gap(10),
                Center(
                  child: Text(
                    "Hi! Welcom back,you've been missed ",
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
                                return "Email can't be empty";
                              }
                              return null;
                            },
                            hintText: "Email",
                            controller: _emailController,
                          ),
                          Gap(30),
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
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(30),

                CustomAppButton(
                  // style: ButtonStyle(
                  //   backgroundColor: WidgetStateProperty.all(Color(0xff753EFB)),
                  // ),
                  onTap: () {
                    _formkey.currentState?.validate();
                    // String goHome = FirebaseAuthSer.signin(
                    //   _emailController.text.trim(),
                    //   _passwordController.text.trim(),
                    // ).toString();
                    // if (goHome == 'bad') {
                    //   customSnack('Not Allowed');
                    // } else {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => HomeView()),
                    //   );
                    // }
                  },
                  text: 'Sign',
                ),
                Gap(30),
                Center(child: Text("Or sign in with ")),
                Gap(10),
                SoicalAuth(),
                Gap(25),

                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.deepPurpleAccent),
                        ),
                      ),
                    ],
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
