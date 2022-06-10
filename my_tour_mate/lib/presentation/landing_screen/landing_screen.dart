import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/common/functions/gap.dart';
import 'package:my_tour_mate/presentation/landing_screen/drawer.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/guide_get_paid.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/landing_main_image.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/looking_for_guide.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/message_widget.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

final GlobalKey<ScaffoldState> _LandingDrawerKey = GlobalKey();

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _LandingDrawerKey,
      drawer: SafeArea(
        child: LandingDrawer(),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.sm),
        child: const LandingAppBar(),
      ),
      body: const SafeArea(child: LandingBody()),
    );
  }
}

class LandingBody extends StatelessWidget {
  const LandingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const LandingImageWidget(),
      gap(height: 20.sm),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sm),
        child: Column(children: [
          const LookingForGuideWidget(),
          gap(height: 30.sm),
          // ignore: prefer_const_constructors
          GuideGetPaidWidget(),
          gap(height: 30.sm),
          const MessageWidget(),
          gap(height: 30.sm)
        ]),
      )
    ]);
  }
}

class LandingAppBar extends StatelessWidget {
  const LandingAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: -5.sm,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          size: 30.sm,
          color: whiteColor,
        ),
        onPressed: () {
          _LandingDrawerKey.currentState!.openDrawer();
        },
      ),
      title: Text(
        "My Tour Mate",
        style: appBartitleStyle,
      ),
      actions: [
        TextButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: landingPageLoginStyle,
            ))
      ],
    );
  }
}
