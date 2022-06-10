import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/home_screen/main_drawer.dart';
import 'package:my_tour_mate/presentation/login_screen/login_screen.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/presentation/landing_screen/drawer.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/guide_get_paid.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/landing_main_image.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/looking_for_guide.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/message_widget.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

final GlobalKey<ScaffoldState> _HomeDrawerKey = GlobalKey();

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _HomeDrawerKey,
      drawer: SafeArea(
          child: Drawer(
        child: MainDrawer(),
      )),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.sm),
        child: MainAppBar(),
      ),
    );
  }
}

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          size: 30.sm,
          color: whiteColor,
        ),
        onPressed: () {
          _HomeDrawerKey.currentState!.openDrawer();
        },
      ),
      title: Text("My Tour Mate"),
      titleSpacing: -1.sm,
      titleTextStyle: appBartitleStyle.copyWith(fontSize: 23.sm),
    );
  }
}
