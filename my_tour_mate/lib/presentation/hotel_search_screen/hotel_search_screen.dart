import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

class HotelSearchBody extends StatelessWidget {
  const HotelSearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 15.sm),
        child: Column(
          children: [
            SearchHotelWidget(),
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
          Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Check In",
                  style:
                      TextStyle(color: lightBlack, fontWeight: FontWeight.w500),
                ),
                gap(height: 5.sm),
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
                    _CheckInDateController.text = "${newDate.toString()}";
                  },
                  child: SizedBox(
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
                ),
              ],
            ),
            gap(width: 20.sm),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Check Out",
                  style:
                      TextStyle(color: lightBlack, fontWeight: FontWeight.w500),
                ),
                gap(height: 5.sm),
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
                    _CheckOutDateController.text = "${newDate.toString()}";
                    _CheckOutDateController.text = "jello";
                  },
                  child: SizedBox(
                    width: 80.sm,
                    height: 35.sm,
                    child: CupertinoTextField(
                      controller: _CheckOutDateController,
                      // readOnly: true,
                      placeholder: "Pick Date",
                      style: TextStyle(fontSize: 14.sm),
                      decoration: BoxDecoration(color: softBg),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              height: 35,
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
