import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/styles/app_styles.dart';

class ArchiveScreen extends StatelessWidget {
  const ArchiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
        backgroundColor: AppColors.primaryWhiteColor,
        appBar: AppBar(
          elevation: 0,
          title: Row(
            children: [
              Text(
                'Post Archive',
                style: headdingThree,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
            ],
          ),
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: raisinBlackColor),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/More_Circle_outline.svg")),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
              itemCount: 50,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 3, crossAxisSpacing: 3),
              itemBuilder: (BuildContext context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsHfSJ36bi_PWtEd23nopqW6_MiXT3AsIsmg&usqp=CAU',
                    fit: BoxFit.cover,
                  ),
                );
              }),
        ));
  }
}
