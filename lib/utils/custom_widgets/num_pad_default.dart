import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_customer_demo/core/styles/app_colors.dart';

// KeyPad widget
// This widget is reusable and its buttons are customizable (color, size)
class NumPadDefault extends StatelessWidget {
  final double buttonSize;
  final double? iconSize;
  final Color buttonColor;
  final Color iconColor;
  final TextEditingController controller;
  final Function delete;
  final Function onSubmit;
  final int inputLength;

  const NumPadDefault({
    super.key,
    this.buttonSize = 70,
    this.iconSize,
    this.buttonColor = Colors.indigo,
    this.iconColor = Colors.grey,
    required this.delete,
    required this.onSubmit,
    required this.controller,
    this.inputLength = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // implement the number keys (from 0 to 9) with the NumberButton2 widget
          // the NumberButton2 widget is defined in the bottom of this file
          children: [
            Expanded(
              child: NumberButtonDefault(
                number: 1,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ),
            Expanded(
              child: NumberButtonDefault(
                number: 2,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ),
            Expanded(
              child: NumberButtonDefault(
                number: 3,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: NumberButtonDefault(
                number: 4,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ),
            Expanded(
              child: NumberButtonDefault(
                number: 5,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ),
            Expanded(
              child: NumberButtonDefault(
                number: 6,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: NumberButtonDefault(
                number: 7,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ),
            Expanded(
              child: NumberButtonDefault(
                number: 8,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ),
            Expanded(
              child: NumberButtonDefault(
                number: 9,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            // this button is used to delete the last number
            Expanded(
              child: IconButtonDefault(
                iconPath: "assets/images/backspace.svg",
                color: iconColor,
                size: iconSize ?? buttonSize,
                onTap: () => delete(),
              ),
            ),

            Expanded(
              child: NumberButtonDefault(
                number: 0,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ),

            // this button is used to submit the entered value
            Expanded(
              child: IconButtonDefault(
                buttonColor: AppColors.primaryColor.withOpacity(0.8),
                iconPath: "assets/images/check.svg",
                color: AppColors.whiteColor,
                size: iconSize ?? buttonSize,
                onTap: () => onSubmit(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// define NumberButton2 widget
// its shape is round
class NumberButtonDefault extends StatelessWidget {
  final int number;
  final double size;
  final Color color;
  final TextEditingController controller;
  final int inputLength;

  const NumberButtonDefault({
    super.key,
    required this.number,
    required this.size,
    required this.color,
    required this.controller,
    required this.inputLength,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          if (controller.text.length < inputLength) {
            controller.text += number.toString();
          }
        },
        child: Container(
          height: 55.h,
          alignment: Alignment.center,
          // padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                color: Colors.grey.shade300,
                spreadRadius: 1.5,
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
          child: Center(
            child: Text(
              number.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// icon button
class IconButtonDefault extends StatelessWidget {
  final String iconPath;
  final double size;
  final Color color;
  final Color buttonColor;
  final void Function() onTap;

  const IconButtonDefault({
    super.key,
    required this.iconPath,
    required this.size,
    required this.color,
    this.buttonColor = AppColors.whiteColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () => onTap.call(),
        child: Container(
          height: 55.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: buttonColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                color: Colors.grey.shade300,
                spreadRadius: 1.5,
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: SvgPicture.asset(
                iconPath,
                fit: BoxFit.cover,
                width: 30,
                colorFilter: ColorFilter.mode(
                  color,
                  BlendMode.srcIn,
                ),
                // height: 32,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
