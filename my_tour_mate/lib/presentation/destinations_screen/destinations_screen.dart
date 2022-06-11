import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';

class DestinationsScreen extends StatelessWidget {
  const DestinationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.sm, vertical: 10.sm),
      child: ListView.separated(
        itemBuilder: (context, index) => DestinationTiles(),
        separatorBuilder: (context, index) => Divider(
          thickness: 2.sm,
        ),
        itemCount: 10,
      ),
    );
  }
}

class DestinationTiles extends StatelessWidget {
  const DestinationTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                width: 180.sm,
                height: 180.sm,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10.sm),
                  color: blackColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    opacity: 0.7,
                    image: AssetImage("lib/assets/coverImg/bg_1.jpg"),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.sm),
                    child: Text(
                      "Destinations : count",
                      style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sm),
                    ),
                  )
                ],
              )
            ],
          ),
          gap(width: 10.sm),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tourism Name",
                style: TextStyle(
                  color: lightBlack,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sm,
                ),
              ),
              gap(height: 5.sm),
              SizedBox(
                width: 183.sm,
                height: 150.sm,
                child: Text(
                  "As travelers seek new and different experiences, adventure tourism continues to grow in popularity. Adventure tourism, according to the Adventure Travel Trade Association, is a tourist activity that includes physical activity, a cultural exchange, or activities in nature.You don't necessarily have to go base jumping or go adventure tour",
                  style: TextStyle(
                    color: lightBlack,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sm,
                    height: 1.4.sm,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
              gap(height: 10.sm),
              // Text("Destinations",style: TextStyle(color: ,),)
            ],
          )
        ],
      ),
    );
  }
}
