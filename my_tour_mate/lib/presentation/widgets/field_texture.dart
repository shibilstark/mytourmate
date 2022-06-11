import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class FieldTexture extends StatelessWidget {
  final TextEditingController controller;
  const FieldTexture({
    Key? key,
    required this.title,
    required this.controller,
  }) : super(key: key);

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
          controller: controller,
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
