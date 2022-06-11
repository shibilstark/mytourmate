import 'package:flutter/material.dart';
import 'package:my_tour_mate/themes/colors.dart';

class ShowImageScreen extends StatelessWidget {
  final String image;
  const ShowImageScreen({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: softBlackColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Image.asset(
          image,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
