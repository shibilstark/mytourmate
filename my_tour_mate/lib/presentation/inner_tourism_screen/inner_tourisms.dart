import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_tour_mate/presentation/login_screen/login_screen.dart';
import 'package:my_tour_mate/presentation/tourisms_screen/tourisms_screen.dart';
import 'package:my_tour_mate/presentation/widgets/common_app_bar.dart';
import 'package:my_tour_mate/presentation/widgets/field_texture.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/presentation/landing_screen/drawer.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/guide_get_paid.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/landing_main_image.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/looking_for_guide.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/message_widget.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class InnerTourismScreen extends StatelessWidget {
  const InnerTourismScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.sm),
          child: CommonAppBar(title: "Tourism Name")),
      body: InnerTourismBody(),
    );
  }
}

class InnerTourismBody extends StatelessWidget {
  const InnerTourismBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.sm, vertical: 10.sm),
      child: Center(
        child: ListView.separated(
          itemBuilder: (context, index) => DestinationsTile(),
          separatorBuilder: (context, index) => gap(height: 10.sm),
          itemCount: 10,
        ),
      ),
    );
  }
}

class DestinationsTile extends StatelessWidget {
  const DestinationsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
