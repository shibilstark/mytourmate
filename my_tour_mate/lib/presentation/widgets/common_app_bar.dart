import 'package:flutter/material.dart';
import 'package:my_tour_mate/themes/styles.dart';

class CommonAppBar extends StatelessWidget {
  final String title;
  const CommonAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: -5,
      title: Text(
        title,
        style: appBartitleStyle,
      ),
    );
  }
}
