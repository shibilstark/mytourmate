import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_tour_mate/presentation/blog_screen/blog_screen.dart';
import 'package:my_tour_mate/presentation/home_screen/main_drawer.dart';
import 'package:my_tour_mate/presentation/hotel_search_screen/hotel_search_screen.dart';
import 'package:my_tour_mate/presentation/search_screen/screen_search.dart';
import 'package:my_tour_mate/presentation/tourisms_screen/tourisms_screen.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

final GlobalKey<ScaffoldState> _HomeDrawerKey =
    GlobalKey(debugLabel: "Main Drawer Key");
ValueNotifier<int> _bottonNav = ValueNotifier(0);

final _pages = [
  BlogScreen(),
  SearchScreen(),
  TourismsScreen(),
  HotelSearchScreen(),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _HomeDrawerKey,
      drawer: const SafeArea(
          child: Drawer(
        child: MainDrawer(),
      )),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.sm),
        child: const MainAppBar(),
      ),
      bottomNavigationBar: MyNavigationBar(),
      body: ValueListenableBuilder(
          valueListenable: _bottonNav,
          builder: (context, value, _) {
            return SafeArea(child: _pages[_bottonNav.value]);
          }),
    );
  }
}

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          size: 25.sm,
          color: whiteColor,
        ),
        onPressed: () {
          _HomeDrawerKey.currentState!.openDrawer();
        },
      ),
      title: Text("My Tour Mate"),
      titleSpacing: -1.sm,
      titleTextStyle: appBartitleStyle.copyWith(fontSize: 20.sm),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message_outlined,
            size: 22.sm,
            color: whiteColor,
          ),
        )
      ],
    );
  }
}

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _bottonNav,
      builder: (BuildContext context, int index, _) {
        return SizedBox(
          height: 50.sm,
          child: BottomNavigationBar(
              currentIndex: _bottonNav.value,
              onTap: (value) {
                _bottonNav.value = value;
                _bottonNav.notifyListeners();
              },
              selectedIconTheme: IconThemeData(color: darkOrange, size: 18.sm),
              unselectedIconTheme: IconThemeData(
                  color: whiteColor.withOpacity(0.8), size: 19.sm),
              selectedFontSize: 12.sm,
              iconSize: 26.sm,
              backgroundColor: softBlackColor,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.house,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.search),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.mapLocation),
                  label: "Destinations",
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.hotel),
                  label: "Hotels",
                ),
              ]),
        );
      },
    );
  }
}
