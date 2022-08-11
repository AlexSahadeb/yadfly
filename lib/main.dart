import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
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
