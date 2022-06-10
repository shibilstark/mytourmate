import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

import '../../common/functions/gap.dart';

class GuideGetPaidWidget extends StatelessWidget {
  const GuideGetPaidWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Are you a tourist guide?\nEarn Money with us",
          style: landingMainTitle,
          textAlign: TextAlign.center,
        ),
        gap(height: 30.sm),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            EarnWithUs(
              icon: Icons.how_to_reg,
              text: "Register Account",
            ),
            EarnWithUs(
              icon: Icons.person,
              text: "Build Profile Connect With Toursit",
            ),
            EarnWithUs(
              icon: Icons.paid,
              text: "Get Paid",
            ),
          ],
        ),
      ],
    );
  }
}

class EarnWithUs extends StatelessWidget {
  final IconData icon;
  final String text;
  const EarnWithUs({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.sm),
      height: 100.sm,
      width: 100.sm,
      decoration: BoxDecoration(
          color: lightOrange, borderRadius: BorderRadius.circular(10.sm)),
      child: Column(children: [
        SizedBox(
          height: 40.sm,
          child: Icon(
            icon,
            size: 30.sm,
            color: whiteColor.withOpacity(0.9),
          ),
        ),
        // gap(height: 10),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: whiteColor.withOpacity(0.9),
              fontWeight: FontWeight.w600,
              fontSize: 14.sm),
        ),
      ]),
    );
  }
}
