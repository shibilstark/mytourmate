import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/add_new_post_screen/add_new_post_appbar.dart';
import 'package:my_tour_mate/presentation/home_screen/home_screen.dart';
import 'package:my_tour_mate/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:my_tour_mate/presentation/widgets/branding_texture.dart';
import 'package:my_tour_mate/presentation/widgets/field_texture.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class AddNewPostScreen extends StatelessWidget {
  const AddNewPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: NewPostAppBar(), preferredSize: Size.fromHeight(45.sm)),
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: NewPostBody()),
    );
  }
}

final _newPostTitleController = TextEditingController();
final _newPostDiscriptionController = TextEditingController();

class NewPostBody extends StatelessWidget {
  const NewPostBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.sm, vertical: 10.sm),
      child: Container(
        constraints: BoxConstraints(maxWidth: 500.sm),
        child: Center(
          child: Column(
            children: [
              gap(height: 20.sm),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add an Image",
                    style: appBartitleStyle.copyWith(
                        fontSize: 14.sm, color: softBlackColor),
                  ),
                  gap(height: 5.sm),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: 350.sm,
                        height: 262.5.sm,
                        color: softBg,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0.sm),
                        child: SizedBox(
                            height: 50.sm,
                            width: 50.sm,
                            child: FloatingActionButton(
                              backgroundColor: lightOrange,
                              onPressed: () {
                                // Image Picker
                              },
                              child: Icon(
                                Icons.add_photo_alternate,
                                color: whiteColor,
                                size: 25.sm,
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              gap(height: 3.sm),
              Text(
                "4 : 3",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sm,
                ),
              ),
              gap(height: 20.sm),
              Container(
                constraints: BoxConstraints(maxWidth: 350.sm),
                child: Column(children: [
                  SizedBox(
                      height: 60.sm,
                      child: AddPostFieldTexture(
                        title: "Place",
                        controller: _newPostTitleController,
                      )),
                  gap(height: 20.sm),
                  SizedBox(
                    height: 150.sm,
                    child: AddPostFieldTexture(
                      title: "Discription",
                      controller: _newPostDiscriptionController,
                    ),
                  )
                ]),
              )
              // FieldTexture(title: "Title", controller: _newPostTitleController)
            ],
          ),
        ),
      ),
    );
  }
}

class AddPostFieldTexture extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const AddPostFieldTexture(
      {Key? key, required this.controller, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextFieldTitleStyle,
        ),
        gap(height: 5.sm),
        Expanded(
          child: CupertinoTextField(
            controller: controller,
            padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 10.sm),
            cursorColor: lightOrange,
            style: TextStyle(color: softBlackColor, fontSize: 16.sm),
            decoration: BoxDecoration(
                color: softGrey, borderRadius: BorderRadius.circular(4.sm)),
          ),
        ),
      ],
    );
  }
}
