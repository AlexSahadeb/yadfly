import 'package:flutter/material.dart';

class ShortScreens extends StatelessWidget {
   ShortScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(child: Text('Short Body')),
      ),
    );
  }
}
