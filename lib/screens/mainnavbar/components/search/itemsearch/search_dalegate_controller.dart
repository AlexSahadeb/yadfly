import 'package:get/get.dart';

class SearchDaegateController extends GetxController {
  final List<Map<String, dynamic>> allItems = [
    {
      "img": "assets/imgs/profile.png",
      "title": "Angela",
      "subtitle": "lorem ipsum doller sit"
    },
    {
      "img": "assets/imgs/profile1.png",
      "title": "Lngela",
      "subtitle": "lorem ipsum doller sit"
    },
    {
      "img": "assets/imgs/profile.png",
      "title": "Xngela",
      "subtitle": "lorem ipsum doller sit"
    },
    {
      "img": "assets/imgs/profile1.png",
      "title": "Bngela",
      "subtitle": "lorem ipsum doller sit"
    },
    {
      "img": "assets/imgs/profile.png",
      "title": "Gngela",
      "subtitle": "lorem ipsum doller sit"
    },
    {
      "img": "assets/imgs/profile1.png",
      "title": "Kngela",
      "subtitle": "lorem ipsum doller sit"
    },
    {
      "img": "assets/imgs/profile.png",
      "title": "Angela",
      "subtitle": "lorem ipsum doller sit"
    },
    {
      "img": "assets/imgs/profile1.png",
      "title": "Lngela",
      "subtitle": "lorem ipsum doller sit"
    },
    {
      "img": "assets/imgs/profile.png",
      "title": "Xngela",
      "subtitle": "lorem ipsum doller sit"
    },
    {
      "img": "assets/imgs/profile1.png",
      "title": "Bngela",
      "subtitle": "lorem ipsum doller sit"
    },
    {
      "img": "assets/imgs/profile.png",
      "title": "Gngela",
      "subtitle": "lorem ipsum doller sit"
    },
    {
      "img": "assets/imgs/profile1.png",
      "title": "Kngela",
      "subtitle": "lorem ipsum doller sit"
    }
  ];
  Rx<List<Map<String, dynamic>>> foundItems =
      Rx<List<Map<String, dynamic>>>([]);
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    foundItems.value = allItems;
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void filterItems(String itemsName) {
    List<Map<String, dynamic>> results = [];
    if (itemsName.isEmpty) {
      results = allItems;
    } else {
      results = allItems
          .where((element) => element["name"]
              .toString()
              .toLowerCase()
              .contains(itemsName.toLowerCase()))
          .toList();
    }
    foundItems.value = results;
  }
}
