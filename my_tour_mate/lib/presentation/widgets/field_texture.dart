import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class FieldTexture extends StatelessWidget {
  const FieldTexture({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextFieldTitleStyle,
        ),
        gap(height: 5.sm),
        CupertinoTextField(
          padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 10.sm),
          cursorColor: lightOrange,
          style: TextStyle(color: softBlackColor, fontSize: 16.sm),
          decoration: BoxDecoration(
              color: softGrey, borderRadius: BorderRadius.circular(4.sm)),
        ),
      ],
    );
  }
}
