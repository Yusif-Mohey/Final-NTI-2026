import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_data.dart';
import 'package:flutter_application_1/features/auth/signup/signup_screen.dart';
import 'package:flutter_application_1/shared/custom_text_form_filed.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                          validator: (Value) {
                            if (Value!.isEmpty) {
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

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff753EFB)),
                ),
                onPressed: () {
                  _formkey.currentState?.validate();
                  AppData.Signin(
                    _emailController.text.trim(),
                    _passwordController.text.trim(),
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "Sign in",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(30),
              Center(child: Text("Or sign in with ")),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xff753EFB),
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        LineIcons.googlePlusG,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xff753EFB),
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        LineIcons.facebook,
                        size: 25,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xff753EFB),
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        LineIcons.twitter,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(25),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "Don't have an account?",
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SignupScreen();
                                  },
                                ),
                              );
                            });
                          },
                        text: "SignUp",
                        style: TextStyle(color: Color(0xff753EFB)),
                      ),
                    ],
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
