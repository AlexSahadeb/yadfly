import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/theme/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Yadfly',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(textTheme: textTheme),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Row(
          children: [
            Container(
              height: getHeight(100),
              width: getWidth(100),
              color: Colors.green,
              child: Center(
                  child: Text(
                "Two",
                style: TextStyle(
                    fontSize: getFont(20), fontFamily: "Radomir Tinkov"),
              )),
            ),
            Container(
              height: getHeight(100),
              width: getWidth(100),
              color: Colors.blueGrey,
              child: Center(
                  child: Text(
                "Three",
                style: TextStyle(fontSize: getFont(20)),
              )),
            ),
            Container(
              height: getHeight(100),
              width: getWidth(100),
              color: Colors.yellow,
              child: Center(
                  child: Text(
                "Foure",
                style: TextStyle(fontSize: getFont(20)),
              )),
            ),
            Container(
              height: getHeight(100),
              width: getWidth(100),
              color: Colors.green,
              child: Center(
                  child: Text(
                "Two",
                style: TextStyle(fontSize: getFont(20)),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
