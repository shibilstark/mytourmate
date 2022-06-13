import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_tour_mate/presentation/blog_screen/blog_screen.dart';
import 'package:my_tour_mate/presentation/home_screen/main_drawer.dart';
import 'package:my_tour_mate/presentation/hotel_search_screen/hotel_search_screen.dart';
import 'package:my_tour_mate/presentation/search_screen/screen_search.dart';
import 'package:my_tour_mate/presentation/tourisms_screen/tourisms_screen.dart';
import 'package:my_tour_mate/presentation/widgets/common_app_bar.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class HotelInfoScreen extends StatelessWidget {
  const HotelInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: CommonAppBar(title: "Hotel Info"),
          preferredSize: Size.fromHeight(45.sm)),
      body: HotelInfoBody(),
    );
  }
}

final carousel = [
  Container(
    width: double.infinity,
    height: 240.sm,
    child: Image.asset(
      "lib/assets/coverImg/destination-8.jpg",
      fit: BoxFit.fitWidth,
    ),
  ),
  Container(
    width: double.infinity,
    height: 240.sm,
    child: Image.asset(
      "lib/assets/coverImg/destination-8.jpg",
      fit: BoxFit.fitWidth,
    ),
  ),
  Container(
    width: double.infinity,
    height: 240.sm,
    child: Image.asset(
      "lib/assets/coverImg/destination-8.jpg",
      fit: BoxFit.fitWidth,
    ),
  ),
  Container(
    width: double.infinity,
    height: 240.sm,
    child: Image.asset(
      "lib/assets/coverImg/destination-8.jpg",
      fit: BoxFit.cover,
    ),
  ),
];

class HotelInfoBody extends StatelessWidget {
  const HotelInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 500.sm),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 15.sm),
          child: ListView(
            children: [
              SizedBox(
                width: double.infinity,
                child: CarouselSlider(
                  items: carousel,
                  options: CarouselOptions(
                    padEnds: false,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeIn,
                    autoPlayInterval: Duration(seconds: 2),
                    viewportFraction: 1,
                  ),
                ),
              ),
              gap(height: 20.sm),
              Text(
                "Hotel Name",
                style: appBartitleStyle.copyWith(
                    color: lightBlack, fontSize: 25.sm),
              ),
              Text(
                "Hotel/Apartment",
                style: appBartitleStyle.copyWith(
                    color: darkOrange, fontSize: 13.sm),
              ),
              gap(height: 10.sm),
              Text(
                "₹ 25345/Package",
                style: appBartitleStyle.copyWith(
                    color: lightOrange, fontSize: 20.sm),
              ),
              gap(height: 20.sm),
              Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like",
                style: landingPageBody.copyWith(color: softBlackColor),
              ),
              gap(height: 20.sm),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: lightOrange),
                onPressed: () {},
                child: Text(
                  "Book Now",
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sm),
                ),
              ),
              gap(height: 10.sm),
              Text(
                "Location",
                style: appBartitleStyle.copyWith(
                    color: lightBlack, fontSize: 16.sm),
              ),
              gap(height: 10.sm),
              Container(
                height: 300.sm,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "lib/assets/coverImg/destination-8.jpg"))),
              ),
              gap(height: 50.sm)
            ],
          ),
        ),
      ),
    );
  }
}
