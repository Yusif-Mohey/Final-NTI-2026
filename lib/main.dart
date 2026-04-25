import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// <<<<<<< HEAD
// <<<<<<< HEAD
// <<<<<<< HEAD
// =======
import 'package:flutter_application_1/Core/splash/splash_screen.dart';
// >>>>>>> origin/splash
import 'package:flutter_application_1/features/auth/presentation/views/login/login_screen.dart';
// =======
import 'package:flutter_application_1/Qr%20code/generat_qr_screen.dart';
import 'package:flutter_application_1/Qr%20code/scan_qr_screen.dart';
import 'package:flutter_application_1/features/root.dart';
// import 'package:flutter_application_1/features/auth/presentation/views/signup/signup_screen.dart';
// import 'package:flutter_application_1/features/splash/view/splash_view.dart';
// >>>>>>> origin/parking
// =======
import 'package:flutter_application_1/features/auth/presentation/views/login/login_screen.dart';
// >>>>>>> origin/onboarding
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/onboarding/onboard_sceen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool seenOnboard = prefs.getBool('seenOnboard') ?? false;

  runApp(MyApp(seenOnboard: seenOnboard));
}

class MyApp extends StatelessWidget {
  final bool seenOnboard;

  const MyApp({super.key, required this.seenOnboard});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // <<<<<<< HEAD
        // <<<<<<< HEAD

        // home: Scaffold(body: const SignupScreen()),
        // home: Root(),

        // SplashView()

        // ServicesCardScreen()
        //  const Root(),
        // =======
        home: Scaffold(
          body: seenOnboard ? const LoginScreen() : const OnboardScreen(),
        ),
        // >>>>>>> origin/onboarding
        // =======
        // home: SplashScreen(),
        // Scaffold(
        // body: seenOnboard ?  LoginScreen() :  OnboardScreen(),

        // ),
        // >>>>>>> origin/splash
      ),
    );
  }
}
