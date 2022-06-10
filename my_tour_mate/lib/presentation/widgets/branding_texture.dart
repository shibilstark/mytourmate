import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';

class BrandingTextureDark extends StatelessWidget {
  const BrandingTextureDark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: double.infinity.sm,
        child: Text(
          "My Tour Mate",
          style: TextStyle(
              color: softBlackColor, fontSize: 30, fontWeight: FontWeight.w800),
          textAlign: TextAlign.center,
        ),
      ),
      gap(height: 5.sm),
      SizedBox(
        width: double.infinity.sm,
        child: Text(
          "JUST BEYOND BOUNDARIES",
          style: TextStyle(
              color: lightOrange, fontSize: 18, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}

class BrandingTextureLight extends StatelessWidget {
  const BrandingTextureLight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: double.infinity.sm,
        child: Text(
          "My Tour Mate",
          style: TextStyle(
              color: whiteColor, fontSize: 30, fontWeight: FontWeight.w800),
          textAlign: TextAlign.center,
        ),
      ),
      gap(height: 5.sm),
      SizedBox(
        width: double.infinity.sm,
        child: Text(
          "JUST BEYOND BOUNDARIES",
          style: TextStyle(
              color: lightOrange, fontSize: 18, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
