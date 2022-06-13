import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/hotel_info_screen/hotel_info_screen.dart';
import 'package:my_tour_mate/presentation/login_screen/login_screen.dart';
import 'package:my_tour_mate/presentation/widgets/field_texture.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/presentation/landing_screen/drawer.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/guide_get_paid.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/landing_main_image.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/looking_for_guide.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/message_widget.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class HotelSearchScreen extends StatelessWidget {
  const HotelSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HotelSearchBody()),
    );
  }
}

class ExpandabelSearchWidget extends StatelessWidget {
  const ExpandabelSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          child: ExpandablePanel(
              header: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.sm, vertical: 10.sm),
                child: Text(
                  "Search Hotlels",
                  style: appBartitleStyle.copyWith(color: lightOrange),
                ),
              ),
              collapsed: SizedBox(),
              expanded: SearchHotelWidget())),
    );
  }
}

class HotelSearchBody extends StatelessWidget {
  const HotelSearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 15.sm),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 500.sm),
          child: Column(
            children: [
              ExpandabelSearchWidget(),
              // LimitedBox(
              //   child: Expanded(
              //       child: ListView.separated(
              //     itemBuilder: (context, index) => HotelTileWidget(),
              //     separatorBuilder: (context, index) => Divider(
              //       thickness: 2.sm,
              //     ),
              //     itemCount: 10,
              //   )),
              // )
              gap(height: 10.sm),
              Expanded(
                  child: ListView.separated(
                itemBuilder: (context, index) => HotelTileWidget(),
                separatorBuilder: (context, index) => Divider(
                  thickness: 2.sm,
                ),
                itemCount: 10,
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class HotelTileWidget extends StatelessWidget {
  const HotelTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HotelInfoScreen()));
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 180.sm,
              height: 120.sm,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sm),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          AssetImage("lib/assets/coverImg/destination-8.jpg"))),
            ),
            gap(width: 10.sm),
            Expanded(
              child: SizedBox(
                height: 120.sm,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hotel Name",
                      style: TextStyle(
                        fontSize: 18.sm,
                        fontWeight: FontWeight.w600,
                        color: lightBlack,
                      ),
                    ),
                    gap(height: 5.sm),
                    Text(
                      "Hotel / Apartment",
                      style: TextStyle(
                          color: lightOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sm),
                    ),
                    gap(height: 15.sm),
                    Text(
                      "Location",
                      style: TextStyle(
                          color: lightBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sm),
                    ),
                    gap(height: 10.sm),
                    Container(
                      height: 30.sm,
                      width: 140.sm,
                      decoration: BoxDecoration(
                          color: lightOrange,
                          borderRadius: BorderRadius.circular(4.sm)),
                      child: Center(
                          child: Text(
                        "₹ 25345 / Package",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 15.sm,
                            fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

final _DestinationController = TextEditingController();
var _CheckInDateController = TextEditingController();
var _CheckOutDateController = TextEditingController();

class SearchHotelWidget extends StatelessWidget {
  const SearchHotelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.sm),
      child: Column(
        children: [
          FieldTexture(
              title: "Destination", controller: _DestinationController),
          gap(height: 10.sm),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Check In",
                      style: TextStyle(
                          color: lightBlack, fontWeight: FontWeight.w500),
                    ),
                    gap(height: 5.sm),
                    Row(
                      children: [
                        SizedBox(
                          width: 80.sm,
                          height: 35.sm,
                          child: CupertinoTextField(
                            controller: _CheckInDateController,
                            readOnly: true,
                            placeholder: "Pick Date",
                            style: TextStyle(fontSize: 14.sm),
                            decoration: BoxDecoration(color: softBg),
                          ),
                        ),
                        gap(width: 5.sm),
                        GestureDetector(
                          onTap: () async {
                            final initialDate = DateTime.now();
                            final lastDate = DateTime(2030, 12, 31);
                            DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: initialDate,
                              firstDate: initialDate,
                              lastDate: lastDate,
                            );
                            _CheckInDateController.text = "${newDate!.toUtc()}";
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: lightOrange,
                                borderRadius: BorderRadius.circular(3.sm)),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.sm, horizontal: 10.sm),
                                child: Icon(
                                  Icons.calendar_month,
                                  size: 15.sm,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                gap(width: 20.sm),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Check Out",
                      style: TextStyle(
                          color: lightBlack, fontWeight: FontWeight.w500),
                    ),
                    gap(height: 5.sm),
                    Row(
                      children: [
                        SizedBox(
                          width: 80.sm,
                          height: 35.sm,
                          child: CupertinoTextField(
                            controller: _CheckOutDateController,
                            readOnly: true,
                            placeholder: "Pick Date",
                            style: TextStyle(fontSize: 14.sm),
                            decoration: BoxDecoration(color: softBg),
                          ),
                        ),
                        gap(width: 5.sm),
                        GestureDetector(
                          onTap: () async {
                            final initialDate = DateTime.now();
                            final lastDate = DateTime(2030, 12, 31);
                            DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: initialDate,
                              firstDate: initialDate,
                              lastDate: lastDate,
                            );
                            _CheckOutDateController.text =
                                "${newDate!.toUtc()}";
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: lightOrange,
                                borderRadius: BorderRadius.circular(3.sm)),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.sm, horizontal: 10.sm),
                                child: Icon(
                                  Icons.calendar_month,
                                  size: 15.sm,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  constraints: BoxConstraints(maxWidth: 80.sm),
                  height: 25,
                  child: MaterialButton(
                    color: lightBlack,
                    onPressed: () {
                      _CheckInDateController.clear();
                      _CheckOutDateController.clear();
                      _DestinationController.clear();
                    },
                    child: Text(
                      "Clear",
                      style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sm),
                    ),
                  ),
                ),
              ]),
          gap(height: 10.sm),
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: lightOrange,
                child: Text(
                  "Search",
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sm),
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
