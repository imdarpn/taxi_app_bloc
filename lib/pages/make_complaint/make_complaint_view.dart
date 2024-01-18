import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_customer_demo/core/common/app_constants/image_constants.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../core/common/app_constants/string_constants.dart';
import '../../core/common/widgets/common_dropdown.dart';
import '../../core/common/widgets/common_outlined_button.dart';
import '../../core/common/widgets/common_scaffold.dart';
import '../../core/common/widgets/common_text_field.dart';
import '../../core/styles/ui_constants.dart';

class MakeComplaintView extends StatefulWidget {
  const MakeComplaintView({super.key});

  @override
  State<MakeComplaintView> createState() => _MakeComplaintViewState();
}

class _MakeComplaintViewState extends State<MakeComplaintView> {
  String? _dropDownValue = "Select Reason";

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      resizeToAvoidBottomInset: false,
      showBackIcon: true,
      label: StringConstants.makeComp,
      body: Column(
        children: [
          Expanded(
            // flex: 7,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  SvgPicture.asset(
                    ImageConstants.complaint,
                  ).addDominoEffect().paddingOnly(left: 30),
                  SizedBox(
                    height: 15.h,
                  ),
                  CommonDropDown(
                    dropDownValueList: [
                      "Vehicle not clean",
                      "Vehicle not clean",
                      "Vehicle not clean"
                    ],
                    selectedValue: (selectedValue) {
                      _dropDownValue = selectedValue;
                      setState(() {});
                    },
                    dropDownValue: _dropDownValue,
                  ).addDominoEffect(),
                  CommonTextField(
                    //textEditingController: codeCon,
                    hintText: context.translate.hintText,
                    maxLines: 4,
                    borderRadius: 15,
                    maxLength: UIConstants.kEmailFieldLength,
                    length: UIConstants.kEmailFieldLength,
                    counterText: "",
                    // nextFocusNode: state.phoneNumberFocusNode,
                  ).paddingOnly(top: 10, bottom: 20),
                ],
              ).paddingAll(20),
            ),
          ),
          CommonOutlinedButton(
            onPressed: () {},
            borderRadius: 24,
            buttonText: context.translate.submit,
          ).paddingSymmetric(vertical: 20, horizontal: 20),
        ],
      ),
    );
  }
}
