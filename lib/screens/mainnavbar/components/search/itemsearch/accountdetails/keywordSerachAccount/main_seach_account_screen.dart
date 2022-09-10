import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/deshboard/deshboard_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/hashtag/hashtag_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/location/location_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/parson/parson_screen.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class MainSearchAccountScreen extends StatelessWidget {
  MainSearchAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        initialIndex: 2,
        child: Scaffold(
          backgroundColor: AppColors.primaryWhiteColor,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextField(
                    // onChanged: (value) {
                    //   onSearch(value);
                    // },
                    fillColor: const Color(0xFFF5F5F5),
                    filled: true,
                    hintText: "Search",
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFFBDBDBD),
                    ),
                    keyboardType: TextInputType.multiline,
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  const ColoredBox(
                    color: AppColors.primaryWhiteColor,
                    child: TabBar(
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: AppColors.purpleColor,
                        indicatorWeight: 3,
                        labelColor: AppColors.purpleColor,
                        tabs: [
                          Tab(
                            icon: Icon(Icons.dashboard),
                          ),
                          Tab(
                            icon: Icon(Icons.person),
                          ),
                          Tab(
                            icon: Icon(Icons.tag),
                          ),
                          Tab(
                            icon: Icon(Icons.location_on_rounded),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: getHeight(800),
                    child: TabBarView(children: [
                      DeshboardScreen(),
                      ParsonScreen(),
                      const HashtagScreen(),
                      const LocationScreen(),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
