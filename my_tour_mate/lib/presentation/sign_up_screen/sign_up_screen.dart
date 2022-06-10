import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tour_mate/presentation/widgets/branding_texture.dart';
import 'package:my_tour_mate/presentation/widgets/common_app_bar.dart';
import 'package:my_tour_mate/presentation/widgets/field_texture.dart';
import 'package:my_tour_mate/presentation/widgets/gap.dart';
import 'package:my_tour_mate/themes/colors.dart';
import 'package:my_tour_mate/themes/styles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(55.sm),
          child: const CommonAppBar(title: "Sign Up")),
      resizeToAvoidBottomInset: false,
      body: const SafeArea(child: SignUpBody()),
    );
  }
}

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        gap(height: 30.sm),
        BrandingTextureDark(),
        gap(height: 20.sm),
        SignUpContainer()
      ],
    );
  }
}

class SignUpContainer extends StatelessWidget {
  const SignUpContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.sm,
      ),
      child: Container(
        // height: 500.sm,
        decoration: BoxDecoration(
          color: softBg,
          borderRadius: BorderRadius.circular(10.sm),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sm, vertical: 30.sm),
          child: Column(
            children: [
              // gap(height: 20.sm),
              Container(
                width: 200.sm,
                alignment: Alignment.center,
                child: SelectTypeWidgetSignUp(),
              ),
              gap(height: 20.sm),
              FieldTexture(title: "Full Name"),
              gap(height: 10.sm),
              FieldTexture(title: "Email"),
              gap(height: 10.sm),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 150.sm, child: FieldTexture(title: "Password")),
                  SizedBox(
                      width: 150.sm,
                      child: FieldTexture(title: "Conform Password"))
                ],
              ),
              gap(height: 10.sm),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 150.sm, child: FieldTexture(title: "Place")),
                  gap(width: 24.sm),
                  SizedBox(width: 50.sm, child: FieldTexture(title: "Age"))
                ],
              ),
              gap(height: 15.sm),
              GenderWidgetSignUp(),
              gap(height: 20.sm),
              CheckBoxWidget(),
              gap(height: 30.sm),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.sm)),
                onPressed: () {},
                child: Text(
                  "Sign up",
                  style: landingMainTitle.copyWith(
                      color: whiteColor, fontSize: 15),
                ),
                color: lightOrange,
                padding: EdgeInsets.symmetric(horizontal: 60.sm),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ValueNotifier<bool> _checkBoxValue = ValueNotifier(false);

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _checkBoxValue,
        builder: (context, bool value, _) {
          return Row(
            children: [
              SizedBox(
                height: 20.sm,
                width: 20.sm,
                child: Checkbox(
                  value: _checkBoxValue.value,
                  activeColor: lightOrange,
                  onChanged: (value) {
                    _checkBoxValue.value = value!;
                    _checkBoxValue.notifyListeners();
                  },
                ),
              ),
              gap(width: 10.sm),
              const Text(
                "I Accept all Terms and Conditions & Privacy Policy",
                style: TextStyle(fontSize: 12),
              )
            ],
          );
        });
  }
}

ValueNotifier<int> _selcetedRadio = ValueNotifier(0);

class SelectTypeWidgetSignUp extends StatelessWidget {
  const SelectTypeWidgetSignUp({Key? key}) : super(key: key);

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
                      "I Travel",
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
                      "I Guide",
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

ValueNotifier<int> _genderSelector = ValueNotifier(0);

class GenderWidgetSignUp extends StatelessWidget {
  const GenderWidgetSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _genderSelector,
        builder: (BuildContext context, int radioValue, _) {
          return Row(
            children: [
              LimitedBox(
                child: Row(
                  children: [
                    SizedBox(
                      height: 20.sm,
                      width: 20.sm,
                      child: Radio<int>(
                        groupValue: _genderSelector.value,
                        value: 1,
                        onChanged: (value) {
                          _genderSelector.value = value!;
                          _genderSelector.notifyListeners();
                        },
                        activeColor: lightOrange,
                      ),
                    ),
                    gap(width: 5.sm),
                    Text(
                      "Male",
                      style: TextStyle(
                          color: softBlackColor,
                          fontSize: 15.sm,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              gap(width: 20.sm),
              LimitedBox(
                child: Row(
                  children: [
                    SizedBox(
                      height: 20.sm,
                      width: 20.sm,
                      child: Radio<int>(
                        groupValue: _genderSelector.value,
                        value: 2,
                        onChanged: (value) {
                          _genderSelector.value = value!;
                          _genderSelector.notifyListeners();
                        },
                        activeColor: lightOrange,
                      ),
                    ),
                    gap(width: 5.sm),
                    Text(
                      "Female",
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
