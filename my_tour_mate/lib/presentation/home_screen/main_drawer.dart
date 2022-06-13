import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/about_screen/about_screen.dart';
import 'package:my_tour_mate/presentation/contact_screen/contact_screen.dart';
import 'package:my_tour_mate/presentation/home_screen/widgets/profile_texture.dart';
import 'package:my_tour_mate/presentation/landing_screen/landing_screen.dart';
import 'package:my_tour_mate/presentation/login_screen/login_screen.dart';
import 'package:my_tour_mate/presentation/profile_screen/profile_screen.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 4,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.sm, vertical: 19.sm),
        width: 300.sm,
        decoration: BoxDecoration(color: whiteColor.withOpacity(0.9)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ProfileTextures(),
          Divider(
            thickness: 0.5.sm,
            color: lightOrange,
            height: 30.sm,
          ),
          Column(
            children: [
              Card(
                elevation: 0.5,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AboutScreen()));
                  },
                  title: Text(
                    "About",
                    style: drawerTitleStyle,
                  ),
                ),
              ),
              Card(
                elevation: 0.5,
                child: ListTile(
                  title: Text(
                    "Terms & Conditions",
                    style: drawerTitleStyle,
                  ),
                ),
              ),
              Card(
                elevation: 0.5,
                child: ListTile(
                  title: Text(
                    "Privacy Policy",
                    style: drawerTitleStyle,
                  ),
                ),
              ),
              Card(
                elevation: 0.5,
                child: ListTile(
                  onTap: () {
                    {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ContactScreen()));
                    }
                  },
                  title: Text(
                    "Contact Us",
                    style: drawerTitleStyle,
                  ),
                ),
              ),
              Card(
                elevation: 0.5,
                child: ListTile(
                  onTap: () {
                    {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LandingScreen()));
                    }
                  },
                  title: Text(
                    "Log Out",
                    style: drawerTitleStyle,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
