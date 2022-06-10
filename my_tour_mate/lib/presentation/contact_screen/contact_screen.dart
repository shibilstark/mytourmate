import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/widgets/branding_texture.dart';
import 'package:my_tour_mate/presentation/widgets/common_app_bar.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';

import 'package:my_tour_mate/themes/styles.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.sm),
        child: CommonAppBar(title: "Contact Us"),
      ),
      body: SafeArea(
        child: ContactScreenBody(),
      ),
    );
  }
}

class ContactScreenBody extends StatelessWidget {
  const ContactScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 25.sm),
      child: ListView(
        children: [
          gap(height: 20.sm),
          BrandingTextureDark(),
          gap(height: 25.sm),
          Text(
            "Name",
            style: TextFieldTitleStyle,
          ),
          gap(height: 5.sm),
          CupertinoTextField(
            cursorColor: lightOrange,
            style: TextStyle(color: softBlackColor, fontSize: 14.sm),
            decoration: BoxDecoration(
                color: softGrey, borderRadius: BorderRadius.circular(4.sm)),
          ),
          gap(height: 10.sm),
          Text(
            "Email",
            style: TextFieldTitleStyle,
          ),
          gap(height: 5.sm),
          CupertinoTextField(
            cursorColor: lightOrange,
            style: TextStyle(color: softBlackColor, fontSize: 14.sm),
            decoration: BoxDecoration(
                color: softGrey, borderRadius: BorderRadius.circular(4.sm)),
          ),
          gap(height: 10.sm),
          Text(
            "Message",
            style: TextFieldTitleStyle,
          ),
          gap(height: 5.sm),
          SizedBox(
            height: 150.sm,
            child: CupertinoTextField(
              cursorColor: lightOrange,
              style: TextStyle(color: softBlackColor, fontSize: 14.sm),
              decoration: BoxDecoration(
                  color: softGrey, borderRadius: BorderRadius.circular(4.sm)),
            ),
          ),
          gap(height: 50.sm),
          MaterialButton(
            color: lightOrange,
            onPressed: () {},
            child: Text(
              "Send",
              style:
                  landingMainTitle.copyWith(color: whiteColor, fontSize: 19.sm),
            ),
          )
        ],
      ),
    );
  }
}
