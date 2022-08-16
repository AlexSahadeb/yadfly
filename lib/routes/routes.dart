import 'package:get/get.dart';
import 'package:yadfly/screens/accountsetup/forgotpasswordmethod/forgot_password_method_screen.dart';
import 'package:yadfly/screens/accountsetup/profilefrom/profile_from_screen.dart';
import 'package:yadfly/screens/accountsetup/selectedcountry/selected_country_screen.dart';
import 'package:yadfly/screens/forgot/forgot_password.dart';
import 'package:yadfly/screens/newpassword/new_password.dart';
import 'package:yadfly/screens/onbording/onbording_screen.dart';
import 'package:yadfly/screens/signin/signin_screen.dart';
import 'package:yadfly/screens/signup/signup_screen.dart';
import 'package:yadfly/screens/splash/splash_screen.dart';
import 'package:yadfly/screens/verify/verify_screen.dart';
import 'package:yadfly/screens/welcome/welcome_screen.dart';

const String splash = "/splash_screen";
const String onbording = "/onbording_screen";
const String welcome = "/welcome_screen";
const String signin = "/signin_screen";
const String signup = "/signup_screen";

///
/// Setup Account
const String forgotmethod = "/forgotmethod_screen";
const String selectedcountry = "/selectedcountry_screen";
const String profilefrom = "/profile_screen";
const String forgotscreen = "/forgot_screen";
const String newpassword = "/newpassword_screen";
const String verify = "/verify_screen";

List<GetPage> getPage = [
  GetPage(name: splash, page: () => const SplashScreen()),
  GetPage(name: onbording, page: () => OnBordingScreen()),
  GetPage(name: welcome, page: () => const WelcomeScreen()),
  GetPage(name: signin, page: () => SigninScreen()),
  GetPage(name: signup, page: () => SignUpScreen()),
  //
  // Setup Account
  GetPage(name: forgotmethod, page: () => ForgotPasswordMethodScreen()),
  GetPage(name: selectedcountry, page: () => SelectedCountryScreen()),
  GetPage(name: profilefrom, page: () => ProfileFromScreen()),
  GetPage(name: forgotscreen, page: () => ForgotPassword()),
  GetPage(name: newpassword, page: () => NewPassword()),
  GetPage(name: verify, page: () => const VerifyScreen())
];
