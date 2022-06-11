import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/home_screen/home_screen.dart';
import 'package:my_tour_mate/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:my_tour_mate/presentation/widgets/branding_texture.dart';
import 'package:my_tour_mate/presentation/widgets/field_texture.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: LoginBody()),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: blackColor,
          image: DecorationImage(
            image: AssetImage("lib/assets/coverImg/bg_1.jpg"),
            fit: BoxFit.cover,
            opacity: 0.4,
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 15.sm),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // gap(height: 1.sm),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.sm),
                child: const BrandingTextureLight(),
              ),
              // gap(
              //   height: 50.sm,
              // ),
              const LoginContainer(),
              gap(
                height: 50.sm,
              ),
              Text(
                "Terms & Conditions | Privacy Policy",
                style: TextStyle(
                    color: whiteColor.withOpacity(0.8), fontSize: 13.sm),
              )
            ]),
      ),
    );
  }
}

final _LoginEmailController = TextEditingController();
final _LoginPasswordlController = TextEditingController();

ValueNotifier<int> _selcetedRadio = ValueNotifier(0);

class LoginContainer extends StatelessWidget {
  const LoginContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40.sm, horizontal: 30.sm),
      // height: 420.sm,
      width: 350.sm,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(15.sm)),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Log in to your account",
            style: TextStyle(
                color: softBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          gap(height: 30.sm),
          FieldTexture(title: "Email", controller: _LoginEmailController),
          gap(height: 10.sm),
          FieldTexture(
              title: "Password", controller: _LoginPasswordlController),
          gap(height: 8),
          SizedBox(
            width: double.infinity.sm,
            child: const Text(
              "Forgot Password?",
              style: TextStyle(
                color: lightOrange,
                fontSize: 13,
              ),
              textAlign: TextAlign.end,
            ),
          ),
          gap(height: 10.sm),
          const SelectTypeWidget(),
          gap(height: 10.sm),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.sm)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text(
                  "Sign in",
                  style: landingMainTitle.copyWith(
                      color: whiteColor, fontSize: 15),
                ),
                color: lightOrange,
                padding: EdgeInsets.symmetric(horizontal: 60.sm),
              ),
              gap(height: 5.sm),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Not a member?  ",
                      style: TextStyle(color: softBlackColor, fontSize: 13.sm)),
                  TextSpan(
                      text: "Sign up",
                      style: TextStyle(color: lightOrange, fontSize: 13.sm))
                ])),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SelectTypeWidget extends StatelessWidget {
  const SelectTypeWidget({Key? key}) : super(key: key);

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
                      "Tourist",
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
