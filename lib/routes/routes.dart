import 'package:get/get.dart';
import 'package:yadfly/screens/onbording/onbording_screen.dart';
import 'package:yadfly/screens/signup/signup_screen.dart';
import 'package:yadfly/screens/splash/splash_screen.dart';
import 'package:yadfly/screens/welcome/welcome_screen.dart';

const String splash = "/splash_screen";
const String onbording = "/onbording_screen";
const String welcome = "/welcome_screen";
const String signup = "/signup_screen";

List<GetPage> getPage = [
  GetPage(name: splash, page: () => const SplashScreen()),
  GetPage(name: onbording, page: () => OnBordingScreen()),
  GetPage(name: welcome, page: () => const WelcomeScreen()),
  GetPage(name: signup, page: () => SignUpScreen())
];
