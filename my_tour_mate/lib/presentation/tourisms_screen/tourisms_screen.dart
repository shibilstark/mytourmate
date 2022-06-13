import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/inner_tourism_screen/inner_tourisms.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';

class TourismsScreen extends StatelessWidget {
  const TourismsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.sm, vertical: 10.sm),
      child: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 500.sm,
          ),
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: 500.sm,
                  maxHeight: 300.sm,
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.sm),
                  child: SizedBox(
                    height: 30.sm,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SizedBox(
                            // width: 300.sm,
                            // height: 30.sm,
                            child: CupertinoTextField(
                              decoration: BoxDecoration(
                                  color: softGrey,
                                  borderRadius: BorderRadius.circular(3.sm)),
                            ),
                          ),
                        ),
                        gap(width: 5.sm),
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
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => TourismsBody(),
                  separatorBuilder: (context, index) => Divider(
                    thickness: 2.sm,
                  ),
                  itemCount: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TourismsBody extends StatelessWidget {
  const TourismsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.sm),
        child: Stack(
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: 500.sm,
                maxHeight: 300.sm,
              ),
              decoration: BoxDecoration(
                  color: blackColor,
                  image: DecorationImage(
                    image: AssetImage("lib/assets/coverImg/bg_1.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.6,
                  )),
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: blackColor.withOpacity(0.4)),
                  width: double.maxFinite,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 15.sm, vertical: 15.sm),
                    child: Text(
                      "Tourism Name",
                      style: TextStyle(
                          color: lightOrange,
                          fontWeight: FontWeight.w600,
                          fontSize: 25.sm),
                    ),
                  ),
                ),
                Container(
                  height: 190.sm,
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.sm, vertical: 15.sm),
                  // decoration: BoxDecoration(color: lightBlack),
                  child: Text(
                    "As travelers seek new and different experiences, adventure tourism continues to grow in popularity. Adventure tourism, according to the Adventure Travel Trade Association, is a tourist activity that includes physical activity, a cultural exchange, or activities in nature.You don't necessarily have to go base jumping or go adventure tour",
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 15.sm,
                        height: 1.4.sm,
                        overflow: TextOverflow.fade),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.sm, vertical: 15.sm),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      LimitedBox(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => InnerTourismScreen()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: lightOrange,
                                borderRadius: BorderRadius.circular(3.sm)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 3.sm, horizontal: 5.sm),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    " 10 Destinations",
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 15.sm,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: whiteColor,
                                    size: 20.sm,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class TourismsBody extends StatelessWidget {
//   const TourismsBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10.sm),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) => InnerTourismScreen()));
//             },
//             child: Stack(
//               alignment: Alignment.bottomLeft,
//               children: [
//                 Container(
//                   width: 180.sm,
//                   height: 180.sm,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadiusDirectional.circular(10.sm),
//                     color: blackColor,
//                     image: DecorationImage(
//                       fit: BoxFit.cover,
//                       opacity: 0.7,
//                       image: AssetImage("lib/assets/coverImg/bg_1.jpg"),
//                     ),
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(10.sm),
//                       child: Text(
//                         "Destinations : count",
//                         style: TextStyle(
//                             color: whiteColor,
//                             fontWeight: FontWeight.w600,
//                             fontSize: 14.sm),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//           gap(width: 10.sm),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Tourism Name",
//                   style: TextStyle(
//                     color: lightBlack,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 20.sm,
//                   ),
//                 ),
//                 gap(height: 5.sm),
//                 SizedBox(
//                   // width: 183.sm,
//                   height: 150.sm,
//                   child: Text(
//                     "As travelers seek new and different experiences, adventure tourism continues to grow in popularity. Adventure tourism, according to the Adventure Travel Trade Association, is a tourist activity that includes physical activity, a cultural exchange, or activities in nature.You don't necessarily have to go base jumping or go adventure tour",
//                     style: TextStyle(
//                       color: lightBlack,
//                       fontWeight: FontWeight.w400,
//                       fontSize: 14.sm,
//                       height: 1.4.sm,
//                       overflow: TextOverflow.clip,
//                     ),
//                   ),
//                 ),
//                 gap(height: 10.sm),
//                 // Text("Destinations",style: TextStyle(color: ,),)
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
