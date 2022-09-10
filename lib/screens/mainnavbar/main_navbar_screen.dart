import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/screens/mainnavbar/components/add/add_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/home/home_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/profile_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/search_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/shorts_screen.dart';
import 'package:yadfly/screens/mainnavbar/mainNavbar_controller.dart';

class MainNavBarScreen extends StatelessWidget {
  MainNavBarController mainNavBarController = Get.put(MainNavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavBarController>(builder: (mainNavBarController) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: mainNavBarController.tabIndex,
            children: [
              HomeScreen(),
              SearchScreen(),
              AddScreen(),
              ShortsScreen(),
              ProfileScreen()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color(0xFFA020F0),
          onTap: mainNavBarController.changeTabIndex,
          currentIndex: mainNavBarController.tabIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.primaryWhiteColor,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: "Search"),
            BottomNavigationBarItem(
              icon: SizedBox(
                child: Material(
                  elevation: 0,
                  color: AppColors.purpleColor,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.add,
                      color: AppColors.primaryWhiteColor,
                    ),
                  ),
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_outline), label: "Shorts"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Profie"),
          ],
        ),
      );
    });
  }
}
