import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/shared/custom_snack_bar.dart';
import 'package:flutter_application_1/core/shared/custom_app_button.dart';
import 'package:flutter_application_1/core/shared/custom_text_form_filed.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_application_1/features/auth/presentation/views/login/login_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/social_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gap/gap.dart';

class SignupScreen extends StatelessWidget {
  static String id = 'Signuppage';

  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    final email = TextEditingController();
    final password = TextEditingController();
    final name = TextEditingController();

    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SignUpSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Account created successfully"),
                backgroundColor: Colors.green,
              ),
            );

            Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginScreen()),);
          }

          if (state is SignUpFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              customSnack(
                 state.message,
                
              ),
            );
          }
        },
        builder: (context, state) {
         if (state is SignUpLoading) {
      return Center(child: CircularProgressIndicator());
    }
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        SizedBox(height: 40),

                        Text(
                          "Create Account",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Gap(10),

                        Text(
                          "Fill your information below or register\nwith your social account",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),

                        Gap(40),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Name", style: TextStyle(fontSize: 16)),
                        ),

                        Gap(8),

                        CustomTextFormField(
                          controller: name,
                          hintText: "Ex. John Doe",
                          obscurePassword: false,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Name can't be empty";
                            }
                            return null;
                          },
                        ),

                        Gap(20),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Email", style: TextStyle(fontSize: 16)),
                        ),

                        Gap(8),

                        CustomTextFormField(
                          controller: email,
                          hintText: "example@gmail.com",
                          obscurePassword: false,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email can't be empty";
                            }
                            return null;
                          },
                        ),

                        Gap(20),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Password",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),

                        Gap(8),

                        CustomTextFormField(
                          controller: password,
                          hintText: "Enter your password",
                          obscurePassword: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password can't be empty";
                            }
                            return null;
                          },
                        ),

                        Gap(30),

                        CustomAppButton(
                          text: "Sign Up",
                          onTap: () {
                            _formkey.currentState?.validate();
                            context.read<AuthBloc>().add(
                              SignUpEvent(
                                email: email.text.trim(),
                                password: password.text.trim(),
                                name: name.text.trim(),
                              ),
                            );
                          },
                        ),

                        Gap(15),

                        SoicalAuth(),

                        Gap(30),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
                              style: TextStyle(fontSize: 15),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
