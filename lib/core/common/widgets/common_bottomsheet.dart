import 'package:flutter/material.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_text.dart';
import 'package:taxi_customer_demo/core/styles/app_colors.dart';

import '../../styles/font_constants.dart';

class CommonBottomSheeet {
  static Future bottomSheet({
    bool isDismissible = true,
    String? mainHeader,
    Widget? subWidget,
    required BuildContext context,
    Function(int)? callback,
  }) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      backgroundColor: Colors.white,
      barrierColor: Colors.transparent,
      enableDrag: isDismissible,
      isDismissible: isDismissible,
      context: context,
      isScrollControlled: true,
      builder: (builder) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    width: 45,
                    height: 5,
                    color: const Color(0xffCCCCCC),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        CommonText(
                          fontSize: FontConstants.font_20,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeightConstants.black,
                          color: AppColors.blackColor,
                          text: "$mainHeader",
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        subWidget ?? Container()
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
