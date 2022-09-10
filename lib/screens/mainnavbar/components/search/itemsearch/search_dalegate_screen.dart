import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/search_dalegate_controller.dart';
import 'package:yadfly/widgets/custom_text_field.dart';
import 'package:get/get.dart';

class SearchDalegateScreen extends StatelessWidget {
  SearchDalegateScreen({Key? key}) : super(key: key);
  SearchDaegateController searchDaegateController =
      Get.put(SearchDaegateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              // autocurrent: true,
              //  autofocus: true,
              prefixIcon: const Icon(Icons.search),
              hintText: "Search",
              fillColor: Colors.grey[200],
              filled: true,
              onChanged: (value) => searchDaegateController.filterItems(value),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recent",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                InkWell(
                    onTap: () {
                      Get.toNamed(mainsearchaccount);
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ))
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
                child: Obx(() => ListView.builder(
                    itemCount: searchDaegateController.foundItems.value.length,
                    itemBuilder: (context, index) => ListTile(
                          onTap: () {
                            Get.toNamed(accountdetails);
                          },
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(searchDaegateController
                                .foundItems.value[index]["img"]),
                          ),
                          title: Text(
                            searchDaegateController.foundItems.value[index]
                                ["title"],
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          subtitle: Text(searchDaegateController
                              .foundItems.value[index]["subtitle"]),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                "assets/icons/Close_Square_outline.svg"),
                          ),
                        ))))
          ],
        ),
      ),
    );
  }
}
