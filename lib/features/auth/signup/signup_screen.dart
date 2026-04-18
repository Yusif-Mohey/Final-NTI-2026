import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/bloc/auth_bloc.dart';
import 'package:flutter_application_1/features/auth/login/login_screen.dart';
import 'package:flutter_application_1/features/home/home_view.dart';
import 'package:flutter_application_1/features/services/Authfirebase.dart';
import 'package:flutter_application_1/shared/custom_app_button.dart';
import 'package:flutter_application_1/shared/custom_text_form_filed.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  static String id = 'Signuppage';
  SignupScreen({super.key});
  final TextEditingController _emailcorrected = TextEditingController();

  final TextEditingController _passwordcorrected = TextEditingController();
  final TextEditingController _namecorrected = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => signupBloc(AuthRepository()),
      child: BlocConsumer<signupBloc, signupState>(
        listener: (context, state) {
          if (state is signupSusessState) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => HomeView()),
            );
          } else if (state is AuthFailurestate) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,

              child: Column(
                children: [
                  SizedBox(height: 80),
                  Text(
                    'Create Account',

                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'fall your information below or register with your social acount',

                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Name', style: TextStyle(fontSize: 20)),
                  ),
                  CustomTextFormField(
                    hintText: 'Ex.john Doe',
                    obscurePassword: false,
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Email', style: TextStyle(fontSize: 20)),
                  ),
                  CustomTextFormField(
                    hintText: 'Example@gmail.com',
                    obscurePassword: false,
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,

                    child: Text('password', style: TextStyle(fontSize: 20)),
                  ),
                  CustomTextFormField(
                    hintText: 'Enter Your password',
                    obscurePassword: true,
                  ),

                  SizedBox(height: 10),
                  CustomAppButton(
                    text: 'Sign Up',
                    onTap: () {
                      context.read<signupBloc>().add(
                        signUp(email: _emailcorrected.text.trim(), password: _passwordcorrected.text.trim(), Name: _namecorrected.text.trim())
                      );
                    },
                  ),
                  SizedBox(height: 15),
                  CustomAppButton(text: 'Sign Up with Google', onTap: () {}),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Aready have an acount?',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 15),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
