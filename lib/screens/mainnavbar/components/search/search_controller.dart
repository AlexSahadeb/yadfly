import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/screens/mainnavbar/components/search/components/discover_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/components/posts_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/components/shorts_screen.dart';
import 'package:yadfly/screens/mainnavbar/components/search/components/trandding_screen.dart';

class SearchController extends GetxController {
  var currentIndex = 0.obs;
  List<String> items = [
    "Trending",
    "Discover",
    "Posts",
    "Shorts",
    "Trending",
    "Discover",
    "Posts",
    "Shorts",
  ];
  List<Widget> itemsScreen = [
    TrandingScreen(),
    const DiscoverScreen(),
    const PostsScreen(),
    const ShortsScreen(),
    TrandingScreen(),
    const DiscoverScreen(),
    const PostsScreen(),
    const ShortsScreen()
  ];
}
