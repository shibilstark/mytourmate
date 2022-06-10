import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

import '../../common/functions/gap.dart';

class LookingForGuideWidget extends StatelessWidget {
  const LookingForGuideWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Are you looking for a guide?",
          style: landingMainTitle,
        ),
        gap(height: 20.sm),
        SizedBox(
          width: 240.w,
          child: Text(
            "Follow the steps below and create your own account to find a guide for making your leisure more fun",
            style: landingPageBody,
            textAlign: TextAlign.center,
          ),
        ),
        gap(height: 30.sm),
        Card(
          elevation: 4.sm,
          child: Container(
            height: 160.sm,
            width: 350.sm,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              color: whiteColor,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  StepsTextureWidget(
                    img: "lib/assets/coverImg/img-222.jpg",
                    text: "Step 1:\nCreate an\naccount",
                  ),
                  StepsTextureWidget(
                    img: "lib/assets/coverImg/img111.jpg",
                    text: "Step 2: Choose\nwhere do you\nwant to travel",
                  ),
                  StepsTextureWidget(
                    img: "lib/assets/coverImg/img333.jpg",
                    text: "Step 3:\nConatct with\nthe guides",
                  ),
                ]),
          ),
        )
      ],
    );
  }
}

class StepsTextureWidget extends StatelessWidget {
  final String img;
  final String text;
  const StepsTextureWidget({
    Key? key,
    required this.img,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          img,
          width: 50.sm,
          height: 50.sm,
        ),
        gap(height: 10.sm),
        Text(
          text,
          textAlign: TextAlign.center,
          style: landingPageBody,
        )
      ],
    );
  }
}
