import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/splash/splash_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/views/login/login_screen.dart';
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
        home: SplashScreen(),
        // Scaffold(
        // body: seenOnboard ?  LoginScreen() :  OnboardScreen(),

        // ),
      ),
    );
  }
}
