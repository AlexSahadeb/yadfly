import 'package:clipboard/clipboard.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hashtagable/hashtagable.dart';
import 'package:share/share.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/components/video/video.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/diabutton.dart';

class HomeSideBar extends StatelessWidget {
  HomeSideBar({Key? key, required this.videoSide}) : super(key: key);
  final Video videoSide;
  String sumText = "https://web.facebook.com/palashroy.gobindo";
  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontSize: 13, color: Colors.white);
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _sideBarItem(() {
            print("Heart");
          }, "assets/icons/Heart.svg", videoSide.like, Colors.purple, style),
          _sideBarItem(() {
            showBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Stack(
                    children: [
                      Container(
                        height: 550,
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const CircleAvatar(
                                radius: 30,
                              ),
                              title: const Text(
                                "jenny_wirosa",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text("Videographer"),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                      "assets/icons/More_Circle_outline.svg")),
                            ),
                            SizedBox(
                              height: getHeight(15),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              height: getHeight(1),
                              color: Colors.grey[300],
                            ),
                            SizedBox(
                              height: getHeight(12),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: const ExpandableText(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                                expandText: 'See',
                                collapseText: 'less',
                                maxLines: 3,
                              ),
                            ),
                            SizedBox(
                              height: getHeight(20),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: HashTagText(
                                text:
                                    "#girl #girls #babygirl #girlpower #girlswholift #polishgirl #girlboss #girly #girlfriend #fitgirl #birthdaygirl #instagirl #girlsnight #animegirl #mygirl",
                                decoratedStyle: const TextStyle(
                                    fontSize: 14, color: Colors.blue),
                                basicStyle: const TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: getHeight(10),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Row(
                                children: [
                                  const Text(
                                    "6",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: getWidth(6),
                                  ),
                                  const Text(
                                    "hours ago",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getHeight(12),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Row(
                                children: [
                                  TextButton.icon(
                                    icon: SvgPicture.asset(
                                      "assets/icons/Heart_outline.svg",
                                      color: Colors.black,
                                    ),
                                    label: const Text(
                                      '12,356',
                                      style: TextStyle(color: raisinBlackColor),
                                    ),
                                    onPressed: () {},
                                  ),
                                  TextButton.icon(
                                    icon: SvgPicture.asset(
                                      "assets/icons/Chat_outline.svg",
                                      color: raisinBlackColor,
                                    ),
                                    label: const Text(
                                      '6,523',
                                      style: TextStyle(color: raisinBlackColor),
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              height: getHeight(1),
                              color: Colors.grey[300],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: ListView.builder(
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return SizedBox(
                                      child: Column(
                                        children: [
                                          ListTile(
                                            leading: const CircleAvatar(
                                              radius: 22,
                                            ),
                                            title: const Text(
                                              "jenny_wirosa",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle:
                                                const Text("Videographer"),
                                            trailing: IconButton(
                                                onPressed: () {},
                                                icon: SvgPicture.asset(
                                                    "assets/icons/More_Circle_outline.svg")),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 20, 0),
                                            child: const ExpandableText(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                                              expandText: 'See',
                                              collapseText: 'less',
                                              maxLines: 3,
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 20, 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                TextButton.icon(
                                                  icon: SvgPicture.asset(
                                                    "assets/icons/Heart_outline.svg",
                                                    color: Colors.black,
                                                  ),
                                                  label: const Text(
                                                    '29',
                                                    style: TextStyle(
                                                        color:
                                                            raisinBlackColor),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                                InkWell(
                                                  onTap: () {},
                                                  child: const Text(
                                                    "Replay",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(width: getWidth(15)),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "6",
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                    SizedBox(
                                                      width: getWidth(6),
                                                    ),
                                                    const Text(
                                                      "hours ago",
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          color: AppColors.primaryWhiteColor,
                          height: 50,
                          child: ListTile(
                            title: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none),
                                hintText: "Your Comments",
                              ),
                            ),
                            leading: const CircleAvatar(
                              radius: 22,
                            ),
                            trailing: GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Post",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.brightLilacColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                });
          }, "assets/icons/Chat.svg", videoSide.comment, Colors.white, style),
          _sideBarItem(() {
            Get.bottomSheet(Wrap(children: [
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DialButton(
                            icon: "assets/icons/Document.svg",
                            pressed: () {
                              FlutterClipboard.copy(sumText);
                            },
                            text: "Link"),
                        DialButton(
                            icon: 'assets/icons/Send.svg',
                            pressed: () {
                              Share.share('https://play.google.com/store/apps');
                            },
                            text: "Share"),
                        DialButton(
                          icon: "assets/icons/Info_Circle_outline.svg",
                          pressed: () {},
                          text: "Report",
                        )
                      ],
                    ),
                    SizedBox(
                      height: getHeight(20),
                    ),
                    Container(
                      height: 2,
                      width: double.maxFinite,
                      color: Colors.grey[200],
                    ),
                    ListTile(
                      onTap: () {
                        print('Favorite');
                      },
                      leading:
                          SvgPicture.asset("assets/icons/Heart_outline.svg"),
                      title: Text(
                        "Add to Favorites",
                        style: headding6,
                      ),
                    ),
                    ListTile(
                        onTap: () {
                          print('Hide');
                        },
                        leading: const Icon(
                          Icons.visibility_off_outlined,
                          color: Color(0xFF424242),
                        ),
                        title: Text("Hide", style: headding6)),
                    ListTile(
                        onTap: () {
                          print('Unfollow');
                        },
                        leading: SvgPicture.asset(
                            "assets/icons/account_outline.svg"),
                        title: Text("Unfollow", style: headding6)),
                  ],
                ),
              )
            ]));
          }, "assets/icons/Send.svg", "", Colors.white, style),
          _sideBarItem(() {
            showBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Wrap(
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
                              leading: SvgPicture.asset(
                                "assets/icons/Info_Circle_outline.svg",
                                color: Colors.red,
                              ),
                              title: const Text(
                                "Report...",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.red),
                              ),
                            ),
                            ListTile(
                              leading: SvgPicture.asset(
                                  "assets/icons/Close_Square_outline.svg"),
                              title: const Text(
                                "Not Interest",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            ListTile(
                              leading: SvgPicture.asset(
                                  "assets/icons/Document_outline.svg"),
                              title: const Text("Copy Link",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  )),
                            ),
                            ListTile(
                              leading: SvgPicture.asset(
                                  "assets/icons/Send_outlined.svg"),
                              title: const Text("Share to...",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  )),
                            ),
                            ListTile(
                              leading:
                                  SvgPicture.asset("assets/icons/Bookmark.svg"),
                              title: const Text("Save",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                });
            print("More Option");
          }, "assets/icons/More Circle.svg", "", Colors.white, style)
        ],
      ),
    );
  }

  _sideBarItem(Function() onTab, String image, String label, Color color,
      TextStyle style) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTab,
          child: SvgPicture.asset(
            image,
            color: color,
            width: 30,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          label,
          style: style,
        )
      ],
    );
  }
}
