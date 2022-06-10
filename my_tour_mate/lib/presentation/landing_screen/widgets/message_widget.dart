import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/contact_screen/contact_screen.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.sm),
      height: 250.sm,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sm),
          color: blackColor,
          image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.5,
              image: AssetImage("lib/assets/coverImg/bg_2.jpg"))),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          'LIFE IS EITHER A DARING ADVENTURE OR NOTHING AT ALL” ~ HELEN KELLER',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: whiteColor.withOpacity(0.8),
              fontWeight: FontWeight.bold,
              fontSize: 22.sm),
        ),
        Text(
          'If Helen Keller can look at life as a great adventure, what excuse do the rest of us have? Take a chance and live life to the fullest. When we are at our most daring is when we feel the most fulfillment.',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.w300,
              height: 1.3,
              fontSize: 14.sm),
        ),
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.sm)),
          color: lightOrange,
          padding: EdgeInsets.symmetric(vertical: 4.sm, horizontal: 12.sm),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ContactScreen()));
          },
          child: Text(
            "Ask A Question",
            style: TextStyle(
                color: whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.sm),
          ),
        )
      ]),
    );
  }
}
