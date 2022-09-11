import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/components/favorites/profile_controller.dart';

import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class ProfileFavoritesScreen extends StatelessWidget {
   ProfileFavoritesScreen({Key? key}) : super(key: key);

  final  profileFavoritesController =Get.put(ProfileFavoritesController());

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      backgroundColor:AppColors.primaryWhiteColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("Favorites",style: headdingThree,),
        backgroundColor: Colors.transparent,
        iconTheme:const IconThemeData(color: raisinBlackColor),
      ),
      body: Padding(
        padding:const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextField(
              fillColor: const Color(0xFFF5F5F5),
              filled: true,
              hintText: "Search",
              prefixIcon: const Icon(
                Icons.search,
                color: Color(0xFFBDBDBD),
              ),
              keyboardType: TextInputType.multiline,
            ),
            SizedBox(height: getHeight(20),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2 Accounts",style: headding6,),
                InkWell(
                    onTap: (){},
                    child:const Text('Remove All',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.blue),)
                )
              ],
            ),
            SizedBox(height: getHeight(20),),
            Expanded(
              flex: 5,
              child: ListView.builder(
                  itemCount: profileFavoritesController.profileFavorites.length,
                  primary: true,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                        onTap: () {},
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              profileFavoritesController
                                  .profileFavorites[index].image),
                        ),
                        title: Text(profileFavoritesController
                            .profileFavorites[index].title),
                        subtitle: Text(profileFavoritesController
                            .profileFavorites[index].subTitle),
                        trailing: Obx(
                              () => GestureDetector(
                            onTap: () {
                              profileFavoritesController.isValue++;
                              profileFavoritesController.onAdd.value =
                              !profileFavoritesController.onAdd.value;
                            },
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                color:
                                profileFavoritesController.onAdd.value
                                    ?AppColors.purpleColor
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    width: 2,
                                    color: profileFavoritesController
                                        .onAdd.value
                                        ? AppColors.primaryWhiteColor
                                        : AppColors.primaryWhiteColor ),
                              ),
                              child: Center(
                                child: Text(
                                  profileFavoritesController.onAdd.value
                                      ? "Add"
                                      : "Remove",
                                  style: const TextStyle(
                                      color: AppColors.primaryWhiteColor),
                                ),
                              ),
                            ),
                          ),
                        ));
                  }),
            ),
            SizedBox(height: getHeight(30),),
            Container(
              height: 2,
              width: double.maxFinite,
              color: Colors.grey[200],
            ),
            SizedBox(height: getHeight(20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Suggested",style: headding6,),
                InkWell(
                    onTap: (){},
                    child:const Text('See All',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.blue),)
                ),
              ],
            ),
            SizedBox(height: getHeight(20),),
            Expanded(
              flex: 5,
              child: ListView.builder(
                  itemCount: profileFavoritesController.profileFavorites.length,
                  primary: true,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                        onTap: () {},
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              profileFavoritesController
                                  .profileFavorites[index].image),
                        ),
                        title: Text(profileFavoritesController
                            .profileFavorites[index].title),
                        subtitle: Text(profileFavoritesController
                            .profileFavorites[index].subTitle),
                        trailing: Obx(
                              () => GestureDetector(
                            onTap: () {
                              profileFavoritesController.isValue++;
                              profileFavoritesController.onAdd.value =
                              !profileFavoritesController.onAdd.value;
                            },
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                color:
                                profileFavoritesController.onAdd.value
                                    ? AppColors.purpleColor
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    width: 2,
                                    color: profileFavoritesController
                                        .onAdd.value
                                        ?AppColors.primaryWhiteColor
                                        : AppColors.primaryWhiteColor),
                              ),
                              child: Center(
                                child: Text(
                                  profileFavoritesController.onAdd.value
                                      ? "Add"
                                      : "Remove",
                                  style: const TextStyle(
                                      color:AppColors.primaryWhiteColor),
                                ),



                              ),
                            ),
                          ),
                        ));
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: CustomButton(
          onPressed: (){
            print('Confirm this value');
          },
          buttonText: 'Confirm Favorites',
          textColor:AppColors.primaryWhiteColor,
          color:AppColors.purpleColor,
        ),
      ),
    );
  }
}
