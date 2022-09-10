import 'package:get/get.dart';
import 'package:yadfly/screens/accountsetup/forgotpasswordmethod/account_create_step_screen.dart';
import 'package:yadfly/screens/accountsetup/profilefrom/profile_from_screen.dart';
import 'package:yadfly/screens/accountsetup/selectedcategory/selected_category_screen.dart';
import 'package:yadfly/screens/accountsetup/selectedcountry/selected_country_screen.dart';
import 'package:yadfly/screens/forgot/forgot_password.dart';
import 'package:yadfly/screens/forgot/newpassword/new_password.dart';
import 'package:yadfly/screens/forgot/verify/verify_screen.dart';
import 'package:yadfly/screens/inbox/Activity/inbox_activity.dart';
import 'package:yadfly/screens/inbox/audiocall/audio_call_screen.dart';
import 'package:yadfly/screens/inbox/inbox_screen.dart';
import 'package:yadfly/screens/inbox/message/message_screen.dart';
import 'package:yadfly/screens/inbox/requestmessage/request_message_screen.dart';
import 'package:yadfly/screens/inbox/videocall/video_call_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/add/add_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/home/home_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/components/archive/archive_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/components/qrcode/qrCode_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/components/saved/saved_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/components/setting/settings_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/profileEdit/profile_edit_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/profile_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/account_details_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/hashtag/conponents/hashtag_details_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/location/locationMap/location_map_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/main_seach_account_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/search_dalegate_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/search_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/shorts_screen.dart';
import 'package:yadfly/screens/mainnavbar/main_navbar_screen.dart';
import 'package:yadfly/screens/onbording/onbording_screen.dart';
import 'package:yadfly/screens/signin/signin_screen.dart';
import 'package:yadfly/screens/signup/signup_screen.dart';
import 'package:yadfly/screens/splash/splash_screen.dart';
import 'package:yadfly/screens/welcome/welcome_screen.dart';

const String splash = "/splash_screen";
const String onbording = "/onbording_screen";
const String welcome = "/welcome_screen";
const String signin = "/signin_screen";
const String signup = "/signup_screen";

///forgot password
const String forgotscreen = "/forgot_screen";
const String newpassword = "/newpassword_screen";
const String verify = "/verify_screen";

/// Setup Account
const String forgotmethod = "/forgotmethod_screen";
const String selectedcountry = "/selectedcountry_screen";
const String profilefrom = "/profile_screen";
const String category = "/category_screen";
// Main Navbar
const String mainNavbar = "/mainnavbar_screen";
const String homescreen = "/home_screen";
const String searchscreen = "/search_screen";
const String addscreen = "/add_screen";
const String shortscreen = "/short_screen";
const String profilescreen = "/profile_screen";
//profile subscreen
const String editprofilescreen = "/edit_profile_screen";
const String settingscreen = "/setting_screen";
const String archivescreen = "/archive_screen";
const String qrcodescreen = "/qrcode_screen";
const String savedscreen = "/saved_screen";

//Search Daegate
const String searchDalegate = "/search_dalegate_screen";
const String mainsearchaccount = "/mainsearchaccount_screen";
const String hashTagDetailsScreen = "/hashTagDetails_Screen";
const String locationMapScreen = "/location_map_screen";
//Search Details
const String accountdetails = "/account_details_screen";

//Inbox Screen
const String inboxscreen = "/inbox_screen";
const String inboxActivityScreen = "/inboxActivity_Screen";
const String requestMessage = "/request_message";
const String messagescreen = "/message_screen";
const String videocall = "/videocall_screen";
const String audiocall = "/audiocall_screen";

List<GetPage> getPage = [
  GetPage(name: splash, page: () => const SplashScreen()),
  GetPage(name: onbording, page: () => OnBordingScreen()),
  GetPage(name: welcome, page: () => const WelcomeScreen()),
  GetPage(name: signin, page: () => SigninScreen()),
  GetPage(name: signup, page: () => SignUpScreen()),
  //gorgot password
  GetPage(name: forgotscreen, page: () => ForgotPassword()),
  GetPage(name: newpassword, page: () => NewPassword()),
  GetPage(name: verify, page: () => const VerifyScreen()),
  // Setup Account
  GetPage(name: forgotmethod, page: () => ForgotPasswordMethodScreen()),
  GetPage(name: selectedcountry, page: () => SelectedCountryScreen()),
  GetPage(name: profilefrom, page: () => ProfileFromScreen()),
  GetPage(name: category, page: () => SelectedCategoryScreen()),
  //Main Navbar
  GetPage(name: mainNavbar, page: () => MainNavBarScreen()),
  GetPage(name: homescreen, page: () => const HomeScreen()),
  GetPage(name: searchscreen, page: () => SearchScreen()),
  GetPage(name: addscreen, page: () => const AddScreen()),
  GetPage(name: shortscreen, page: () => ShortsScreen()),
  GetPage(name: profilescreen, page: () => ProfileScreen()),
  //profie subscreen
  GetPage(name: editprofilescreen, page: () => ProfileEditScreen()),
  GetPage(name: settingscreen, page: () => SettingScreen()),
  GetPage(name: archivescreen, page: () => const ArchiveScreen()),
  GetPage(name: qrcodescreen, page: () => const QRCodeScreen()),
  GetPage(name: savedscreen, page: () => SavedScreen()),
  //Search Daegate
  GetPage(name: searchDalegate, page: () => SearchDalegateScreen()),
  GetPage(name: mainsearchaccount, page: () => MainSearchAccountScreen()),
  GetPage(name: hashTagDetailsScreen, page: () => const HashTagDetailsScreen()),
  GetPage(name: locationMapScreen, page: () => LocationMapScreen()),
  //Search Details
  GetPage(name: accountdetails, page: () => AccounDetailsScreen()),
  //Inbox Screen
  GetPage(name: inboxscreen, page: () => const InboxScreen()),

  GetPage(name: requestMessage, page: () => const RequestMessageScreen()),
  GetPage(name: inboxActivityScreen, page: () => InboxActivityScreen()),
  GetPage(name: messagescreen, page: () => MessageScreen()),
  GetPage(name: videocall, page: () => const VideoCallScreen()),
  GetPage(name: audiocall, page: () => const AudioCallScreen())
];
