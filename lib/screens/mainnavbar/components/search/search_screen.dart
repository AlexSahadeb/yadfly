import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/search_dalegate_screen.dart';

import 'package:yadfly/screens/mainnavbar/components/search/search_controller.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final searchController = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(searchDalegate);
                },
                child: Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                  child: SizedBox(
                    height: 56,
                    width: double.maxFinite,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.search),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Search")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(25),
              ),
              SizedBox(
                height: 35,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: searchController.items.length,
                    itemBuilder: (context, index) => Obx(() => InkWell(
                          onTap: () {
                            searchController.currentIndex.value = index;
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    searchController.currentIndex.value == index
                                        ? const Color(0xFFA020F0)
                                        : const Color(0xFFf1f1f1f1),
                                border: Border.all(
                                    width: 2, color: AppColors.purpleColor)),
                            child: Center(
                                child: Text(
                              searchController.items[index],
                              style: TextStyle(
                                  color: searchController.currentIndex.value ==
                                          index
                                      ? const Color(0xFFf1f1f1)
                                      : const Color(0xFFA020F0)),
                            )),
                          ),
                        ))),
              ),
              SizedBox(
                height: getHeight(25),
              ),
              Obx(() => SizedBox(
                  height: 550,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        searchController
                            .itemsScreen[searchController.currentIndex.value]
                      ],
                    ),
                  )))
            ],
          ),
        ),
      ),
    ));
  }
}
