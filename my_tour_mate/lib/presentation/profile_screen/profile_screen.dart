import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_tour_mate/presentation/login_screen/login_screen.dart';
import 'package:my_tour_mate/presentation/profile_screen/profile_appbar.dart';
import 'package:my_tour_mate/presentation/show_image_screen/show_image_screen.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/guide_get_paid.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/landing_main_image.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/looking_for_guide.dart';
import 'package:my_tour_mate/presentation/landing_screen/widgets/message_widget.dart';
import 'package:my_tour_mate/test.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: ProfileAppbar(),
        preferredSize: Size.fromHeight(45.sm),
      ),
      body: ProfileScreenBody(),
    );
  }
}

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sm, vertical: 10.sm),
        child: Container(
          constraints: BoxConstraints(maxWidth: 500.sm),
          child: ListView(
            children: [
              gap(height: 10.sm),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10.sm),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ShowImageScreen(
                                      image:
                                          "lib/assets/coverImg/images-1651518171388.png",
                                    )));
                          },
                          child: CircleAvatar(
                            radius: 80.sm,
                            backgroundColor: lightOrange,
                            backgroundImage: AssetImage(
                                "lib/assets/coverImg/images-1651518171388.png"),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(10.sm),
                            child: Text(
                              "100 Following",
                              style: drawerTitleStyle.copyWith(
                                  fontSize: 18.sm,
                                  color: darkOrange,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                  color: lightOrange,
                                  fontSize: 15.sm,
                                  fontWeight: FontWeight.bold),
                            )),
                        Column(
                          children: [
                            // Text(
                            //   "Rating   4 / 5",
                            //   style: TextStyle(
                            //       color: lightBlack,
                            //       fontSize: 14.sm,
                            //       fontWeight: FontWeight.bold),
                            // ),
                            gap(height: 5.sm),
                            RatingBar.builder(
                                itemSize: 18.sm,
                                initialRating: 4,
                                minRating: 1,
                                maxRating: 5,
                                unratedColor: softBg,

                                // glowColor: lightOrange,
                                itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: lightOrange,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // Stack(
              //   children: [
              //     Container(
              //       width: double.infinity,
              //       height: 150.sm,
              //       decoration: BoxDecoration(
              //           color: lightOrange,
              //           borderRadius: BorderRadius.circular(10.sm)),
              //     ),
              //     Padding(
              //       padding: EdgeInsets.all(10.sm),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Padding(
              //             padding: EdgeInsets.only(top: 40.sm),
              //             child: GestureDetector(
              //               onTap: () {
              //                 Navigator.of(context).push(MaterialPageRoute(
              //                     builder: (context) => ShowImageScreen(
              //                           image:
              //                               "lib/assets/coverImg/images-1651518171388.png",
              //                         )));
              //               },
              //               child: CircleAvatar(
              //                 radius: 80.sm,
              //                 backgroundColor: lightOrange,
              //                 backgroundImage: AssetImage(
              //                     "lib/assets/coverImg/images-1651518171388.png"),
              //               ),
              //             ),
              //           ),
              //           Container(
              //             color: blackColor,
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 TextButton(
              //                     onPressed: () {},
              //                     child: Text("100 Followers")),
              //                 TextButton(
              //                     onPressed: () {},
              //                     child: Text("100 Following")),
              //               ],
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // gap(height: 20.sm),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.sm),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "User Full Name",
                      style: drawerTitleStyle,
                    ),
                    gap(width: 10.sm),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        constraints:
                            BoxConstraints(maxHeight: 30.sm, maxWidth: 30.sm),
                        padding: EdgeInsets.all(5.sm),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: lightOrange),
                            borderRadius: BorderRadius.circular(500.sm)),
                        child: Center(
                          child: Icon(
                            Icons.manage_accounts,
                            size: 15.sm,
                            color: lightOrange,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.sm),
                constraints: BoxConstraints(maxWidth: 500.sm),
                // decoration: BoxDecoration(color: lightOrange),
                child: Text(
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, ",
                  style: drawerTitleStyle.copyWith(
                      fontSize: 15.sm, fontWeight: FontWeight.w400),
                  overflow: TextOverflow.clip,
                ),
              ),
              gap(height: 20.sm),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    minWidth: 100.sm,
                    color: Colors.green,
                    onPressed: () {},
                    elevation: 0,
                    child: Text(
                      "Wallet : ₹ 2100",
                      style: drawerTitleStyle.copyWith(
                        color: whiteColor,
                        fontSize: 16.sm,
                      ),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 100.sm,
                    color: Colors.green,
                    onPressed: () {},
                    elevation: 0,
                    child: Text(
                      "With Draw",
                      style: drawerTitleStyle.copyWith(
                        color: whiteColor,
                        fontSize: 16.sm,
                      ),
                    ),
                  ),
                ],
              ),
              gap(height: 20.sm),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 500.sm,
                ),
                child: Card(
                  child: ExpandablePanel(
                    header: Padding(
                      padding: EdgeInsets.all(10.0.sm),
                      child: Text(
                        "Payments",
                        style: drawerTitleStyle,
                      ),
                    ),
                    collapsed: SizedBox(),
                    expanded: Container(
                      height: 100.sm,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              gap(height: 10.sm),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 500.sm,
                ),
                child: Card(
                  child: ExpandablePanel(
                    header: Padding(
                      padding: EdgeInsets.all(10.0.sm),
                      child: Text(
                        "Reviews",
                        style: drawerTitleStyle,
                      ),
                    ),
                    collapsed: SizedBox(),
                    expanded: Container(
                      height: 300.sm,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              gap(height: 10.sm),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Rate ?",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 18.sm,
                      fontWeight: FontWeight.w600),
                ),
              ),
              gap(height: 20.sm),
              Divider(),
              Text(
                "Posts",
                style: TextStyle(
                    color: lightBlack,
                    fontSize: 20.sm,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: List.generate(10, (index) => OwnPostTexture()),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final dropItems = [
  "Edit",
  " Delete",
];

DropdownMenuItem<String> _buildMenuItem(String item) {
  return DropdownMenuItem(
    child: Text(item),
    value: item,
  );
}

class OwnPostTexture extends StatelessWidget {
  const OwnPostTexture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: lightOrange,
      elevation: 1,
      child: Container(
        // height: 500.sm,
        padding: EdgeInsets.all(10.sm),
        width: double.infinity.sm,
        decoration: BoxDecoration(
          // color: softBg.withOpacity(0.5),
          // border: Border.all(width: 0.08.sm),
          borderRadius: BorderRadius.circular(10.sm),
        ),
        child: Column(
          children: [
            Row(
              children: [
                LimitedBox(
                  child: Row(children: [
                    CircleAvatar(
                      radius: 25.sm,
                      backgroundImage: const AssetImage(
                          "lib/assets/coverImg/images-1651518171388.png"),
                    ),
                  ]),
                ),
                gap(width: 10.sm),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "User Name",
                    style: TextStyle(
                        color: softBlackColor,
                        fontSize: 18.sm,
                        fontWeight: FontWeight.w600),
                  ),
                  gap(height: 3.sm),
                  Text(
                    "Guide/Tourist",
                    style: TextStyle(
                        color: lightOrange,
                        fontSize: 13.sm,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
                Spacer(),

                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    items: dropItems.map(_buildMenuItem).toList(),
                    onChanged: (value) {
                      // value == "Edit"
                      //     ? Navigator.of(context).pop()
                      //     : Navigator.of(context).push(MaterialPageRoute(
                      //         builder: (ctx) => TestScreen()));
                    },
                    icon: Icon(
                      Icons.more_vert,
                      size: 20.sm,
                      color: lightBlack,
                    ),
                  ),
                )

                // IconButton(
                //     onPressed: () {},
                //     icon: Icon(
                //       Icons.more_vert,
                //       size: 18.sm,
                //     ))
              ],
            ),
            gap(height: 10.sm),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ShowImageScreen(
                        image:
                            "lib/assets/coverImg/images-1651519307316.webp")));
              },
              child: Container(
                constraints:
                    BoxConstraints(maxHeight: 299.2.sm, maxWidth: 374.sm),
                decoration: BoxDecoration(
                  // color: lightBlack,
                  borderRadius: BorderRadius.circular(10.sm),
                ),
                child: Image.asset(
                    "lib/assets/coverImg/images-1651519307316.webp"),
              ),
            ),
            gap(height: 10),
            ExpandablePanel(
              header: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.sm),
                child: Text(
                  "Place:   <place>",
                  style: TextStyle(
                      color: lightOrange,
                      fontSize: 14.sm,
                      fontWeight: FontWeight.w600),
                ),
              ),
              theme: ExpandableThemeData(
                tapBodyToExpand: true,
                tapBodyToCollapse: true,
              ),
              collapsed: Text(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.3',
                overflow: TextOverflow.fade,
                maxLines: 3,
                style: TextStyle(
                    color: lightBlack, fontSize: 14.sm, height: 1.3.sm),
              ),
              expanded: Text(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.3',
                overflow: TextOverflow.clip,
                style: TextStyle(
                    color: lightBlack, fontSize: 14.sm, height: 1.3.sm),
              ),
            ),
            gap(height: 5.sm),
            Divider(
              color: lightOrange,
              thickness: 0.2.sm,
              height: 10.sm,
            ),
            gap(height: 5.sm),
            SizedBox(
              height: 60.sm,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30.sm,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.solidHeart,
                            color: Colors.red,
                            size: 25.sm,
                          )),
                    ),
                    gap(height: 5.sm),
                    Text(
                      "100",
                      style: TextStyle(
                        color: lightOrange,
                      ),
                    )
                  ],
                ),
                gap(width: 0.sm),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30.sm,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.comment,
                            color: lightBlack,
                            size: 25.sm,
                          )),
                    ),
                    gap(height: 5.sm),
                    Text(
                      "28",
                      style: TextStyle(
                        color: lightOrange,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Date",
                      style: TextStyle(
                          color: softBlackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 11),
                    ),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
