import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/login_screen/login_screen.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/presentation/landing_screen/drawer.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/guide_get_paid.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/landing_main_image.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/looking_for_guide.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/message_widget.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 15.sm),
        child: Container(
          constraints: BoxConstraints(maxWidth: 500.sm),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10.sm),
                child: SizedBox(
                  height: 30.sm,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          // width: 250.sm,
                          // height: 30.sm,
                          child: CupertinoTextField(
                            decoration: BoxDecoration(
                                color: softGrey,
                                borderRadius: BorderRadius.circular(3.sm)),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                content: Container(
                                  constraints: BoxConstraints(maxHeight: 50.sm),
                                  child: Center(child: FilterSelectWidget()),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        "Apply",
                                        style: TextStyle(
                                            color: lightOrange,
                                            fontSize: 15.sm),
                                      ))
                                ],
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.filter_alt,
                            size: 15.sm,
                            color: lightOrange,
                          )),
                      MaterialButton(
                          elevation: 0,
                          color: lightOrange,
                          onPressed: () {},
                          child: Text(
                            "Search",
                            style:
                                TextStyle(color: whiteColor, fontSize: 15.sm),
                          ))
                    ],
                  ),
                ),
              ),
              gap(height: 10.sm),
              Expanded(
                  child: ListView.separated(
                itemBuilder: (context, index) => SearchTile(),
                separatorBuilder: (context, index) => gap(height: 5.sm),
                itemCount: 10,
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class SearchTile extends StatelessWidget {
  const SearchTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: softBg.withOpacity(0.5),
      leading: CircleAvatar(
          backgroundImage:
              AssetImage("lib/assets/coverImg/images-1651518171388.png")),
      title: Text(
        "User Name",
        style: TextStyle(color: softBlackColor, fontSize: 16.sm),
      ),
      trailing: Text(
        "Guide / Tourist",
        style: TextStyle(color: lightOrange, fontSize: 14.sm),
      ),
    );
  }
}

ValueNotifier<int> _selcetedRadio = ValueNotifier(0);

class FilterSelectWidget extends StatelessWidget {
  const FilterSelectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _selcetedRadio,
        builder: (BuildContext context, int radioValue, _) {
          return Row(
            children: [
              LimitedBox(
                child: Row(
                  children: [
                    Radio<int>(
                      groupValue: _selcetedRadio.value,
                      value: 1,
                      onChanged: (value) {
                        _selcetedRadio.value = value!;
                        _selcetedRadio.notifyListeners();
                      },
                      activeColor: lightOrange,
                    ),
                    Text(
                      "All",
                      style: TextStyle(
                          color: softBlackColor,
                          fontSize: 15.sm,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              LimitedBox(
                child: Row(
                  children: [
                    Radio<int>(
                      groupValue: _selcetedRadio.value,
                      value: 2,
                      onChanged: (value) {
                        _selcetedRadio.value = value!;
                        _selcetedRadio.notifyListeners();
                      },
                      activeColor: lightOrange,
                    ),
                    Text(
                      "Guide",
                      style: TextStyle(
                          color: softBlackColor,
                          fontSize: 15.sm,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
