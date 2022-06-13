import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/home_screen/home_screen.dart';
import 'package:my_tour_mate/presentation/landing_screen/landing_screen.dart';
import 'package:my_tour_mate/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:my_tour_mate/presentation/widgets/branding_texture.dart';
import 'package:my_tour_mate/presentation/widgets/common_app_bar.dart';
import 'package:my_tour_mate/presentation/widgets/field_texture.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: CommonAppBar(title: "Settings"),
          preferredSize: Size.fromHeight(45.sm)),
      body: SettingsBody(),
    );
  }
}

// class SettingsAppBar extends StatelessWidget {
//   final String title;
//   const SettingsAppBar({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       titleSpacing: -5,
//       title: Text(
//         title,
//         style: appBartitleStyle,
//       ),
//       actions: [
//         TextButton(
//             onPressed: () {
//               Navigator.of(context).push(
//                   MaterialPageRoute(builder: (context) => LandingScreen()));
//             },
//             child: Text(
//               "Log Out",
//               style: landingPageLoginStyle,
//             )),
//       ],
//     );
//   }
// }

class SettingsBody extends StatelessWidget {
  const SettingsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 30.sm),
      child: ListView.builder(
        itemBuilder: (context, index) => settingsTiles[index],
        itemCount: settingsTiles.length,
      ),
    );
  }
}

final List<Widget> settingsTiles = [
  gap(height: 10.sm),
  ListTile(
    title: Row(
      children: [
        Icon(
          Icons.lock,
          size: 20.sm,
          color: lightBlack,
        ),
        gap(width: 15.sm),
        Text(
          "Manage Email And Password",
          style: drawerTitleStyle,
        )
      ],
    ),
  ),
  ListTile(
    title: Row(
      children: [
        Icon(
          Icons.attach_money_outlined,
          size: 20.sm,
          color: lightBlack,
        ),
        gap(width: 15.sm),
        Text(
          "My Transactions",
          style: drawerTitleStyle,
        )
      ],
    ),
  ),
  ListTile(
    title: Row(
      children: [
        Icon(
          Icons.account_balance,
          size: 20.sm,
          color: lightBlack,
        ),
        gap(width: 15.sm),
        Text(
          "Add Bank Details",
          style: drawerTitleStyle,
        )
      ],
    ),
  ),
  ListTile(
    title: Row(
      children: [
        Icon(
          Icons.logout,
          size: 20.sm,
          color: lightBlack,
        ),
        gap(width: 15.sm),
        Text(
          "Logout",
          style: drawerTitleStyle,
        )
      ],
    ),
  ),
];
