import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/styles/app_styles.dart';

class AccounDetailsScreen extends StatelessWidget {
  AccounDetailsScreen({Key? key}) : super(key: key);
  AccountDetailsController accountDetailsController =
      Get.put(AccountDetailsController());
  final url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Samsumg Usa",
            style: headdingThree,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: raisinBlackColor),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
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
                                    print('Report');
                                  },
                                  leading: const Icon(
                                    Icons.report,
                                    color: Colors.red,
                                  ),
                                  title: const Text(
                                    "Report....",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.red),
                                  ),
                                ),
                                ListTile(
                                    onTap: () {
                                      print('Block');
                                    },
                                    leading: SvgPicture.asset(
                                        "assets/icons/Close_Square_outline.svg"),
                                    title: Text("Block", style: headding6)),
                                ListTile(
                                    onTap: () {
                                      print('About this Account');
                                    },
                                    leading: const Icon(
                                      Icons.person_outline,
                                      color: Color(0xFF424242),
                                    ),
                                    title: Text("About this Account",
                                        style: headding6)),
                                ListTile(
                                    onTap: () {
                                      print('Copy Profile URL');
                                    },
                                    leading: SvgPicture.asset(
                                        "assets/icons/Document_outline.svg"),
                                    //  const Icon(
                                    //   Icons.contact_page_outlined,
                                    //   color: Color(0xFF424242),
                                    // ),
                                    title: Text(
                                      "Copy profile URL",
                                      style: headding6,
                                    )),
                                ListTile(
                                    onTap: () {
                                      print('Share this Profile');
                                    },
                                    leading: SvgPicture.asset(
                                        "assets/icons/Send_outlined.svg"),
                                    //  const Icon(
                                    //   Icons.send_outlined,
                                    //   color: Color(0xFF424242),
                                    // ),
                                    title: Text(
                                      "Share this profile",
                                      style: headding6,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.pending_outlined,
                    size: 30,
                  )),
            ),
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
                        height: getHeight(62),
                      ),
                      Center(
                        child: Stack(
                          children: [
                            const CircleAvatar(
                              // backgroundImage:
                              //     AssetImage("assets/imgs/profie.png"),
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
                        "Samsung USA",
                        style: headdingThree,
                      ),
                      SizedBox(
                        height: getHeight(8),
                      ),
                      Text(
                        'Electronics Brand',
                        style: headding6,
                      ),
                      SizedBox(
                        height: getHeight(8),
                      ),
                      Text(
                        'Larem ipsum dolor sit amet, consectrtur adipiscing elit,sed do eiusmod tempor.Incididunt ut labore et doler.',
                        style: headdingFour,
                      ),
                      SizedBox(
                        height: getHeight(8),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                height: 45,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: const Color(0xffA020F0)),
                                  color: const Color(0xffA020F0),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.person_add,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: getWidth(16),
                                      ),
                                      const Text(
                                        "Follow",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(inboxscreen);
                            },
                            child: Container(
                                height: 45,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 2, color: const Color(0xffA020F0)),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/Chat.svg",
                                        color: AppColors.purpleColor,
                                      ),
                                      SizedBox(
                                        width: getWidth(16),
                                      ),
                                      const Text(
                                        "Message",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.purpleColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
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
                        childrenDelegate: SliverChildBuilderDelegate((context,
                                index) =>
                            FutureBuilder(
                              future: accountDetailsController
                                  ._initializeVideoPlayerFuture,
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  return AspectRatio(
                                    aspectRatio: accountDetailsController
                                        ._controller.value.aspectRatio,
                                    child: Stack(
                                      children: [
                                        VideoPlayer(
                                          accountDetailsController._controller,
                                        ),
                                        Positioned(
                                            child: Center(
                                                child: IconButton(
                                                    onPressed: () {
                                                      if (accountDetailsController
                                                          ._controller
                                                          .value
                                                          .isPlaying) {
                                                        accountDetailsController
                                                            ._controller
                                                            .pause();
                                                      } else {
                                                        accountDetailsController
                                                            ._controller
                                                            .play();
                                                      }
                                                    },
                                                    icon: Icon(
                                                      accountDetailsController
                                                              ._controller
                                                              .value
                                                              .isPlaying
                                                          ? Icons.pause
                                                          : Icons.play_arrow,
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

class AccountDetailsController extends GetxController {
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
