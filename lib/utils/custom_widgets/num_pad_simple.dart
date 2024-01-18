import 'package:flutter/material.dart';
import 'package:taxi_customer_demo/core/styles/app_colors.dart';

// KeyPad widget
// This widget is reusable and its buttons are customizable (color, size)
class NumPadSimple extends StatelessWidget {
  final double buttonSize;
  final double? iconSize;
  final Color buttonColor;
  final Color iconColor;
  final TextEditingController controller;
  final Function delete;
  final Function onSubmit;
  final int inputLength;

  const NumPadSimple({
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
    return Container(
      decoration: BoxDecoration(
        color: AppColors.transparentColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // implement the number keys (from 0 to 9) with the NumberButton2 widget
            // the NumberButton2 widget is defined in the bottom of this file
            children: [
              NumberButtonSimple(
                number: 1,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
              NumberButtonSimple(
                number: 2,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
              NumberButtonSimple(
                number: 3,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButtonSimple(
                number: 4,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
              NumberButtonSimple(
                number: 5,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
              NumberButtonSimple(
                number: 6,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButtonSimple(
                number: 7,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
              NumberButtonSimple(
                number: 8,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
              NumberButtonSimple(
                number: 9,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // this button is used to delete the last number
              IconButton(
                onPressed: () => delete(),
                icon: Icon(
                  Icons.backspace,
                  color: iconColor.withOpacity(0.6),
                ),
                iconSize: iconSize ?? buttonSize,
              ),
              NumberButtonSimple(
                number: 0,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                inputLength: inputLength,
              ),
              // this button is used to submit the entered value
              IconButton(
                onPressed: () => onSubmit(),
                icon: Icon(
                  Icons.check_rounded,
                  color: iconColor.withOpacity(0.6),
                ),
                iconSize: iconSize ?? buttonSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// define NumberButton2 widget
// its shape is round
class NumberButtonSimple extends StatelessWidget {
  final int number;
  final double size;
  final Color color;
  final TextEditingController controller;
  final int inputLength;

  const NumberButtonSimple({
    super.key,
    required this.number,
    required this.size,
    required this.color,
    required this.controller,
    required this.inputLength,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          if (controller.text.length < inputLength) {
            controller.text += number.toString();
          }
        },
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
    );
  }
}
