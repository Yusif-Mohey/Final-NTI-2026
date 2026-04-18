import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/login/login_screen.dart';
import 'package:flutter_application_1/features/auth/signup/signup_screen.dart';



import 'package:flutter_application_1/features/root.dart';




import 'package:flutter_application_1/firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body:
        LoginScreen()
      //  Root()
      

      //  ProfileScreenList()
        //  LocationScreen()
      ),
    );
  }
}
