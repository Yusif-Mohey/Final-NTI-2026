import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/shared/custom_app_button.dart';
import 'package:flutter_application_1/core/shared/custom_text_form_filed.dart';
import 'package:flutter_application_1/features/auth/bloc/auth_bloc.dart';
import 'package:flutter_application_1/features/auth/presentation/views/signup/signup_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/social_auth.dart';
import 'package:flutter_application_1/features/home/presentation/view/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          print('Erorr');
        },
        builder: (context, state) {
          if (state is AuthsaccesState) {
            return HomeView();
          }
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
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
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
                        width: 20.w,
                        onTap: () {
                          _formkey.currentState?.validate();
                          context.read<AuthBloc>().add(
                            LoginEvent(
                              email: _emailController.text,
                              password: _passwordController.text,
                            ),
                          );
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
                                style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                ),
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
        },
      ),
    );
  }
}
