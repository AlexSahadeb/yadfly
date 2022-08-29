import 'package:flutter/material.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/hashtag/conponents/hashtagcomponents/recent/recent_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/hashtag/conponents/hashtagcomponents/shorts/short_screens.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/hashtag/conponents/hashtagcomponents/top/top_screen.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';

class LocationMapScreen extends StatelessWidget {
  const LocationMapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        backgroundColor: primaryWhiteColor,
        appBar: AppBar(
          backgroundColor: primaryWhiteColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: raisinBlackColor),
          title: const Text('Location',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.pending_outlined,
                  size: 25,
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: double.maxFinite,
                child: Row(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: const CircleAvatar(
                          backgroundColor: purpleColor,
                          child: Center(
                              child: Icon(
                            Icons.location_on,
                            color: primaryWhiteColor,
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: getWidth(20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Angelina Santa Catarina",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: raisinBlackColor),
                      ),
                      SizedBox(
                        height: getHeight(6),
                      ),
                      Text(
                        'City',
                        style: headding6,
                      ),
                      SizedBox(
                        height: getHeight(6),
                      ),
                      const Text(
                        '1137 posts',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: getHeight(25),
              ),
              CustomButton(
                  color: purpleColor,
                  textColor: primaryWhiteColor,
                  buttonText: "More Information",
                  onPressed: () {}),
              SizedBox(
                height: getHeight(35),
              ),
              Container(
                  height: getHeight(200),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey))),
              SizedBox(
                height: getHeight(24),
              ),
              Container(
                color: primaryWhiteColor,
                child: const TabBar(
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: purpleColor,
                    indicatorWeight: 3,
                    labelColor: purpleColor,
                    tabs: [
                      Tab(
                        text: "Top",
                      ),
                      Tab(
                        text: "Recent",
                      ),
                      Tab(text: "Shorts"),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 225,
                child: TabBarView(children: [
                  TopScreen(),
                  const RecentScreen(),
                  ShortScreens()
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
