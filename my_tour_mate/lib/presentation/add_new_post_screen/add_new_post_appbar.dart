import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/home_screen/home_screen.dart';
import 'package:my_tour_mate/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:my_tour_mate/presentation/widgets/branding_texture.dart';
import 'package:my_tour_mate/presentation/widgets/field_texture.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class NewPostAppBar extends StatelessWidget {
  const NewPostAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: -5,
      title: Text(
        "Profile",
        style: appBartitleStyle,
      ),
      actions: [
        TextButton(
            onPressed: () {},
            child: Text(
              "Post",
              style: drawerTitleStyle.copyWith(color: whiteColor),
            )),
      ],
    );
  }
}
