import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

import '../../common/functions/gap.dart';

class LandingImageWidget extends StatelessWidget {
  const LandingImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 250.sm,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 204, 204, 204),
              image: DecorationImage(
                image: AssetImage("lib/assets/coverImg/mainImg.jpg"),
                fit: BoxFit.fill,
                scale: 0.8,
              )),
        ),
        Container(
          height: 250.sm,
          color: Colors.black.withOpacity(0.75),
        ),
        Text(
          "Discover Your Favorite Places,\nAnd Find Your Travel Guide",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: whiteColor.withOpacity(0.75),
              // shadows: [
              //   Shadow(
              //       color: Colors.grey,
              //       offset: Offset.fromDirection(1, 1),
              //       blurRadius: 4)
              // ],
              fontSize: 28.sp,
              fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
