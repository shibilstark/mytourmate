import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/about_screen/about_screen.dart';
import 'package:my_tour_mate/presentation/contact_screen/contact_screen.dart';
import 'package:my_tour_mate/presentation/login_screen/login_screen.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class LandingDrawer extends StatelessWidget {
  const LandingDrawer({
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
          DummyProfile(),
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
            ],
          )
        ]),
      ),
    );
  }
}

class DummyProfile extends StatelessWidget {
  const DummyProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.sm,
      width: 300.sm,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Row(children: [
          CircleAvatar(
            backgroundColor: lightOrange.withOpacity(0.7),
            radius: 40.sm,
            child: Center(
                child: Icon(
              Icons.person,
              size: 60.sm,
              color: whiteColor,
            )),
          ),
          gap(width: 10.sm),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gap(height: 10.sm),
              Container(
                height: 25.sm,
                width: 120.sm,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5.sm)),
              ),
              gap(height: 10.sm),
              Container(
                height: 25.sm,
                width: 150.sm,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5.sm)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
