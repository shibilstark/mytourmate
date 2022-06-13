import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_tour_mate/presentation/profile_screen/profile_screen.dart';
import 'package:my_tour_mate/presentation/show_image_screen/show_image_screen.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 15.sm),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 500.sm),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return const PostTexture();
            },
            itemCount: 10,
            separatorBuilder: (context, index) {
              return gap(height: 15.sm);
            },
          ),
        ),
      ),
    );
  }
}
// Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (ctx) => ProfileScreen()));

class PostTexture extends StatelessWidget {
  const PostTexture({Key? key}) : super(key: key);

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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => ProfileScreen()));
                  },
                  child: LimitedBox(
                    child: Row(children: [
                      CircleAvatar(
                        radius: 25.sm,
                        backgroundImage: const AssetImage(
                            "lib/assets/coverImg/images-1651518171388.png"),
                      ),
                      gap(width: 10.sm),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                    ]),
                  ),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Follow",
                      style: TextStyle(
                          color: darkOrange,
                          fontSize: 15.sm,
                          fontWeight: FontWeight.w600),
                    ))
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
