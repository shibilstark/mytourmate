import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/widgets/common_app_bar.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.sm),
          child: CommonAppBar(
            title: "About",
          )),
      body: SafeArea(child: AboutBody()),
    );
  }
}

class AboutBody extends StatelessWidget {
  const AboutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 500.sm),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sm, vertical: 10.sm),
          child: ListView(
            children: [
              Text(
                "Our Services",
                style: landingMainTitle,
              ),
              gap(height: 10.sm),
              AboutGridView(),
              gap(height: 30.sm),
              Text(
                "Tourism industry is has emerged as one of the fastest growing industries in the world and economically important for rapid growth for India.",
                style: landingPageBody,
                textAlign: TextAlign.center,
              ),
              gap(height: 10.sm),
              Text(
                "We are providing valuable services for your journey makes beautiful.You can find and select your private guides for your travel, we strictly promote you for choose properties insted of Hotels Because it will awesome if you stay at properties",
                style: landingPageBody,
                textAlign: TextAlign.center,
              ),
              gap(height: 30.sm),
              Container(
                padding: EdgeInsets.all(20.sm),
                height: 500.sm,
                decoration: BoxDecoration(
                    color: blackColor,
                    borderRadius: BorderRadius.circular(20.sm),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("lib/assets/coverImg/about.jpg"),
                        opacity: 0.5)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Make Your Travel Stories Memorable and Safe With Us",
                        style: landingMainTitle.copyWith(color: whiteColor),
                        textAlign: TextAlign.center,
                      ),
                      gap(height: 30.sm),
                      Text(
                        "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.s",
                        style: landingPageBody.copyWith(
                          color: whiteColor.withOpacity(0.8),
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      gap(height: 50.sm),
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Contact Us",
                          style: landingMainTitle.copyWith(
                              color: whiteColor, fontSize: 20.sm),
                        ),
                        color: lightOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.sm)),
                      ),
                    ]),
              ),
              gap(height: 20.sm)
            ],
          ),
        ),
      ),
    );
  }
}

class AboutGridView extends StatelessWidget {
  AboutGridView({Key? key}) : super(key: key);

  final _gridImage = [
    "lib/assets/coverImg/bg_2.jpg",
    "lib/assets/coverImg/destination-8.jpg",
    "lib/assets/coverImg/destination-9.jpg",
    "lib/assets/coverImg/services-4.jpg",
  ];

  final _gridTitles = [
    "Properties",
    "Private Guide",
    "Travel Arrangements",
    "Location Manager",
  ];

  final _gridBody = [
    "Top timeshare companies of india : club mahindra,",
    "Connect and find best guides for your travel. Hundreds of guides are here to make your tour perfect",
    "Get all the travel arrangements like Tour planning, Hotel booking, Itinerary, and Private guides",
    "The location manager handles the creative side of finding appropriate locations",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(15.sm),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sm),
              color: blackColor,
              image: DecorationImage(
                image: AssetImage(_gridImage[index]),
                fit: BoxFit.cover,
                opacity: 0.4,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _gridTitles[index],
                style: landingMainTitle.copyWith(
                    color: whiteColor, fontSize: 20.sm),
              ),
              gap(height: 20.sm),
              Text(
                _gridBody[index],
                style: landingPageBody.copyWith(
                    color: whiteColor.withOpacity(0.8),
                    fontSize: 15.sm,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        );
      },
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.sm,
          crossAxisSpacing: 10.sm,
          childAspectRatio: 150.sm / 200.sm),
    );
  }
}
