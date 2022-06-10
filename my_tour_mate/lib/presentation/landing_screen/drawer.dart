import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/common/functions/gap.dart';
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
      child: Row(children: [
        CircleAvatar(
          backgroundColor: lightOrange.withOpacity(0.7),
          radius: 60.sm,
        ),
        gap(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25.sm,
              width: 120.sm,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5.sm)),
            ),
            gap(height: 10),
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
    );
  }
}
