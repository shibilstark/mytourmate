import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/profile_screen/profile_screen.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';

class ProfileTextures extends StatelessWidget {
  const ProfileTextures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.sm,
      width: 300.sm,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProfileScreen()));
        },
        child: Row(children: [
          GestureDetector(
            child: CircleAvatar(
              // backgroundColor: lightOrange.withOpacity(0.7),
              radius: 40.sm,
              backgroundImage:
                  AssetImage("lib/assets/coverImg/images-1651518171388.png"),
            ),
          ),
          gap(width: 10.sm),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gap(height: 10.sm),
              Container(
                height: 30.sm,
                width: 180.sm,
                child: Text(
                  "User Name",
                  style: TextStyle(
                    color: lightBlack,
                    fontSize: 19.sm,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
              // gap(height: 10.sm),
              Container(
                height: 40.sm,
                width: 180.sm,
                child: Text(
                  "useremail@example.com",
                  style: TextStyle(
                    color: lightBlack,
                    fontSize: 15.sm,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
