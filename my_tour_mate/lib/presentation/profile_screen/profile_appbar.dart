import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_tour_mate/presentation/add_new_post_screen/add_new_post_screen.dart';
import 'package:my_tour_mate/presentation/login_screen/login_screen.dart';
import 'package:my_tour_mate/presentation/settings_screen/settings_screen.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/presentation/landing_screen/drawer.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/guide_get_paid.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/landing_main_image.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/looking_for_guide.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/message_widget.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class ProfileAppbar extends StatelessWidget {
  const ProfileAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: -5,
      title: Text(
        "Profile",
        style: appBartitleStyle,
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => SettingsScreen()));
            },
            icon: Icon(Icons.settings)),
        IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => AddNewPostScreen()));
            },
            icon: Icon(Icons.add_photo_alternate)),
      ],
    );
  }
}
