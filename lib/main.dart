import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yadfly',
      theme: ThemeData(backgroundColor: Colors.white),
      home: const SplashScreen(),
      initialRoute: splash,
      getPages: getPage,
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("data")),
    );
  }
}
