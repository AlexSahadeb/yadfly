import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/hashtag/conponents/hashtagcomponents/recent/recent_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/hashtag/conponents/hashtagcomponents/shorts/short_screens.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/hashtag/conponents/hashtagcomponents/top/top_screen.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';

class HashTagDetailsScreen extends StatelessWidget {
  const HashTagDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            '#Smartphones',
            style: headding6,
          ),
          iconTheme: const IconThemeData(color: raisinBlackColor),
          actions: [
            IconButton(
                onPressed: () {
                  print("Pending");
                },
                icon: const Icon(
                  Icons.pending_outlined,
                  size: 25,
                )),
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.mos.cms.futurecdn.net/Pn3JL6Dvj374auve6Vac3n.jpg'),
                    radius: 40,
                  ),
                ),
                SizedBox(
                  height: getHeight(12),
                ),
                Text(
                  "217M Photos",
                  style: headdingFour,
                ),
                SizedBox(
                  height: getHeight(24),
                ),
                CustomButton(
                    color: AppColors.purpleColor,
                    textColor: AppColors.primaryWhiteColor,
                    buttonText: 'Follow',
                    onPressed: () {}),
                SizedBox(
                  height: getHeight(20),
                ),
                Container(
                  color: AppColors.primaryWhiteColor,
                  child: const TabBar(
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: AppColors.purpleColor,
                      indicatorWeight: 3,
                      labelColor: AppColors.purpleColor,
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
                  height: 405,
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
      ),
    );
  }
}
