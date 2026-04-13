import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_data.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Gap(30),
        // CustomTextFormField(hintText: " Enter your email"),
        // Gap(20),
        // CustomTextFormField(hintText: "Enter your Password",),
        SizedBox(height: 20),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
            hintText: ("Enter your Email"),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true,
          controller: _passwordController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.password),
            hintText: ("Enter your Password"),
          ),
        ),

        Gap(10),
        ElevatedButton(
          onPressed: () {
            AppData.login(
              _emailController.text.trim(),
              _passwordController.text.trim(),
            );
          },

          child: SizedBox(width: 50, child: Column(children: [Text("login")])),
        ),

        Gap(10),
        ElevatedButton(
          onPressed: () {
            // AppData.Register(
            //   _emailController.text.trim(),
            //   _passwordController.text.trim(),
            // );
            AppData.signinGoogle();
          },

          child: SizedBox(width: 50, child: Column(children: [Text("Add")])),
        ),

        Gap(20),
        ElevatedButton(onPressed: () {}, child: Text("Forget your Password?")),
        // CustomAppButton(
        //   text: "Forget Password",
        //   textColor: Colors.white,
        //   onTap: () {},
        //   width: 30,
        //   height: 5,
        // ),
        // Gap(30),
        // CustomAppButton(
        //   text: "login",
        //   textColor: Colors.white,
        //   onTap: () {},

        //   width: 30,
        //   height: 5,
        // ),
      ],
    );
  }
}
