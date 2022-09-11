import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/profilemodel/profile_mode.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/profilemodel/useraccountmodel/user_account_model.dart';
import 'package:yadfly/styles/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  ProfileController profileController = Get.put(ProfileController());
  final url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "john_doe",
                style: headdingThree,
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.expand_more))
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Image.asset("assets/imgs/defaultLogo.png"),
          iconTheme: const IconThemeData(color: raisinBlackColor),
          actions: [
            IconButton(
                onPressed: () {
                  Get.bottomSheet(
                    Wrap(
                      children: [
                        Container(
                            height: 500,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              color: Colors.white,
                            ),
                            child: Expanded(
                              child: ListView.builder(
                                  itemCount: userAccount.length,
                                  itemBuilder: (context, index) => ListTile(
                                        leading: CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                              userAccount[index].profile),
                                        ),
                                        title: Text(
                                          userAccount[index].name,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        subtitle:
                                            Text(userAccount[index].subName),
                                        trailing: Icon(
                                          userAccount[index].icon,
                                          color: AppColors.purpleColor,
                                        ),
                                      )),
                            )),
                      ],
                    ),
                  );
                },
                icon: SvgPicture.asset("assets/icons/add.svg")),
            IconButton(
                onPressed: () {
                  Get.toNamed(editprofilescreen);
                },
                icon: SvgPicture.asset("assets/icons/Edit_outline.svg")),
            IconButton(
                onPressed: () {
                  Get.bottomSheet(
                    Wrap(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  Get.toNamed(settingscreen);
                                },
                                leading: SvgPicture.asset(
                                    "assets/icons/Setting_outline.svg"),
                                title: Text(
                                  "Setting",
                                  style: headding6,
                                ),
                              ),
                              ListTile(
                                  onTap: () {
                                    Get.toNamed(archivescreen);
                                  },
                                  leading: SvgPicture.asset(
                                      "assets/icons/Archive_outline.svg"),
                                  title: Text("Archive", style: headding6)),
                              ListTile(
                                  onTap: () {
                                    Get.toNamed(qrcodescreen);
                                  },
                                  leading: SvgPicture.asset(
                                      "assets/icons/Scan_outline.svg"),
                                  title: Text("QR Code", style: headding6)),
                              ListTile(
                                  onTap: () {
                                    Get.toNamed(savedscreen);
                                  },
                                  leading: SvgPicture.asset(
                                      "assets/icons/Bookmark.svg"),
                                  title: Text(
                                    "Saved",
                                    style: headding6,
                                  )),
                              ListTile(
                                  onTap: () {
                                    Get.toNamed(favoritesScreen);
                                  },
                                  leading: SvgPicture.asset(
                                      "assets/icons/Heart_outline.svg"),
                                  title: Text(
                                    "Favorites",
                                    style: headding6,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                icon: SvgPicture.asset("assets/icons/More_Circle_outline.svg")),
          ],
        ),
        body: DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: AppColors.primaryWhiteColor,
                expandedHeight: 500,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                  color: Colors.white,
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: getHeight(30),
                      ),
                      Center(
                        child: Stack(
                          children: [
                            const CircleAvatar(
                              // backgroundImage:
                              //    AssetImage("assets/imgs/profie.png"),
                              radius: 60,
                            ),
                            SizedBox(
                              height: getHeight(20),
                            ),
                            Positioned(
                                right: 5,
                                bottom: 5,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.purpleColor),
                                  child: const Center(
                                      child: Icon(
                                    Icons.edit,
                                    size: 15,
                                    color: AppColors.primaryWhiteColor,
                                  )),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getHeight(12),
                      ),
                      Text(
                        "John Deo",
                        style: headdingThree,
                      ),
                      SizedBox(
                        height: getHeight(10),
                      ),
                      Text(
                        'UX/UI Designer',
                        style: headding6,
                      ),
                      SizedBox(
                        height: getHeight(10),
                      ),
                      Text(
                        'Larem ipsum dolor sit amet, consectrtur adipiscing elit,sed do eiusmod tempor.Incididunt labore doler.',
                        style: headdingFour,
                      ),
                      SizedBox(
                        height: getHeight(10),
                      ),
                      Text("www.yourdomain.com",
                          style: TextStyle(
                              fontSize: getFont(16),
                              fontWeight: FontWeight.w700,
                              color: Colors.blue)),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                '267',
                                style: headdingThree,
                              ),
                              SizedBox(
                                height: getHeight(5),
                              ),
                              Text(
                                "Posts",
                                style: headdingFour,
                              )
                            ],
                          ),
                          Container(
                            height: getHeight(54),
                            width: getWidth(2),
                            color: Colors.grey[200],
                          ),
                          Column(
                            children: [
                              Text(
                                '24,278',
                                style: headdingThree,
                              ),
                              SizedBox(
                                height: getHeight(4),
                              ),
                              Text(
                                "Followers",
                                style: headdingFour,
                              )
                            ],
                          ),
                          Container(
                            height: getHeight(54),
                            width: getWidth(2),
                            color: Colors.grey[200],
                          ),
                          Column(
                            children: [
                              Text(
                                '237',
                                style: headdingThree,
                              ),
                              SizedBox(
                                height: getHeight(5),
                              ),
                              Text(
                                "Following",
                                style: headdingFour,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: getHeight(24),
                      ),
                      Container(
                        height: getHeight(2),
                        width: double.maxFinite,
                        color: Colors.grey[200],
                      ),
                     const SizedBox(
                        height: 24,
                      ),
                      Container(
                          height: 90,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: myProfile.length,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 0,
                                    right: 13,
                                  ),
                                  height: 67,
                                  width: 67,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 4,
                                          color: AppColors.brightLilacColor)),
                                  child: ClipOval(
                                      child: Image.asset(myProfile[index].img)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(myProfile[index].name)
                              ],
                            ),
                          )),
                    ],
                  ),
                )),
              ),
              SliverAppBar(
                pinned: true,
                primary: false,
                elevation: 0,
                backgroundColor: AppColors.primaryWhiteColor,
                automaticallyImplyLeading: false,
                title: Align(
                  alignment: AlignmentDirectional.center,
                  child: TabBar(
                      indicatorWeight: 4,
                      isScrollable: true,
                      indicatorColor: AppColors.purpleColor,
                      tabs: [
                        Tab(
                            child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.dashboard,
                                color: AppColors.purpleColor,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                "Feeds",
                                style: TextStyle(color: AppColors.purpleColor),
                              )
                            ],
                          ),
                        )),
                        Tab(
                            child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/callV.svg",
                                color: AppColors.purpleColor,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "Short",
                                style: TextStyle(color: AppColors.purpleColor),
                              )
                            ],
                          ),
                        )),
                        Tab(
                            child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: const [
                              Icon(Icons.supervisor_account,
                                  color: AppColors.purpleColor),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                "Tag",
                                style: TextStyle(color: AppColors.purpleColor),
                              )
                            ],
                          ),
                        ))
                      ]),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 800,
                  child: TabBarView(children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5),
                          itemCount: 50,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Image.asset(
                                "assets/imgs/profile.png",
                                fit: BoxFit.cover,
                              ),
                            );
                          }),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: GridView.custom(
                        gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: const [
                            QuiltedGridTile(2, 1),
                            QuiltedGridTile(2, 1),
                            QuiltedGridTile(2, 1),
                          ],
                        ),
                        childrenDelegate: SliverChildBuilderDelegate(
                            (context, index) => FutureBuilder(
                                  future: profileController
                                      ._initializeVideoPlayerFuture,
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.done) {
                                      return AspectRatio(
                                        aspectRatio: profileController
                                            ._controller.value.aspectRatio,
                                        child: Stack(
                                          children: [
                                            VideoPlayer(
                                              profileController._controller,
                                            ),
                                            Positioned(
                                                child: Center(
                                                    child: IconButton(
                                                        onPressed: () {
                                                          if (profileController
                                                              ._controller
                                                              .value
                                                              .isPlaying) {
                                                            profileController
                                                                ._controller
                                                                .pause();
                                                          } else {
                                                            profileController
                                                                ._controller
                                                                .play();
                                                          }
                                                        },
                                                        icon: Icon(
                                                          profileController
                                                                  ._controller
                                                                  .value
                                                                  .isPlaying
                                                              ? Icons.pause
                                                              : Icons
                                                                  .play_arrow,
                                                        ))))
                                          ],
                                        ),
                                      );
                                    } else {
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  },
                                )),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5),
                          itemCount: 50,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Image.asset(
                                "assets/imgs/profile.png",
                                fit: BoxFit.cover,
                              ),
                            );
                          }),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
        extendBody: true);
  }
}

class ProfileController extends GetxController {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
