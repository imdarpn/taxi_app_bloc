import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../core/common/app_constants/icon_constants.dart';
import '../../core/common/app_constants/string_constants.dart';
import '../../core/common/widgets/common_outlined_button.dart';
import '../../core/common/widgets/widgets.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';
import '../../core/styles/ui_constants.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showBackIcon: true,
      centerTitle: true,
      showAppBar: true,
      bodyPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      label: StringConstants.sos,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          CommonText(
            text: context.translate.trustedContacts,
            fontFamily: FontFamilyConstants.fontName,
            fontWeight: FontWeight.w500,
            fontSize: FontConstants.font_16,
          ),
          SizedBox(
            height: 20.h,
          ),
        
          ListView.separated(
            shrinkWrap: true,
            primary: false,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () => context.pushNamed(Routes.chat),
                title: CommonText(
                  text: "Father",
                  fontFamily: FontFamilyConstants.fontName,
                  fontWeight: FontWeight.w500,
                  fontSize: FontConstants.font_18,
                ),
                subtitle: CommonText(
                  text: "92+ 9828458021",
                  fontFamily: FontFamilyConstants.fontName,
                  fontWeight: FontWeight.w500,
                  color: AppColors.lightGreyColor,
                  fontSize: FontConstants.font_18,
                ),
                leading: SvgPicture.asset(
                  IconConstants.person,
                  width: 50.w,
                  height: 50.w,
                ),
                trailing: CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: SvgPicture.asset(
                    IconConstants.chat,
                    width: 16.w,
                    height: 16.w,
                  ),
                ),
              ).addDominoEffect();
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10.h,
              );
            },
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: CommonOutlinedButton(
              borderRadius: 25,
              onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  context: context,
                  // isScrollControlled: true,
                  builder: (BuildContext context) {
                    return SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(Icons.arrow_back_ios)),
                                const Spacer(
                                  flex: 1,
                                ),
                                CommonText(
                                  text: context.translate.addTrustedContact,
                                  fontFamily: FontFamilyConstants.fontName,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConstants.font_22,
                                ),
                                const Spacer(
                                  flex: 2,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CommonTextField(
                              //textEditingController: codeCon,
                              hintText: context.translate.fullName,
                              textInputType: TextInputType.number,
                              maxLength: UIConstants.kEmailFieldLength,
                              length: UIConstants.kEmailFieldLength,
                              counterText: "",
                              textInputAction: TextInputAction.next,
                              // nextFocusNode: state.phoneNumberFocusNode,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CommonTextField(
                              //textEditingController: codeCon,
                              hintText: context.translate.phoneNumber,
                              textInputType: TextInputType.number,
                              maxLength: UIConstants.kEmailFieldLength,
                              length: UIConstants.kEmailFieldLength,
                              counterText: "",
                              textInputAction: TextInputAction.next,
                              // nextFocusNode: state.phoneNumberFocusNode,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CommonOutlinedButton(
                              onPressed: () {},
                              borderRadius: 25,
                              buttonText: context.translate.save,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                      ),
                    ).paddingAll(10);
                  },
                );
              },
              buttonText: context.translate.addNew,
            ),
          )
        ],
      ),
    );
  }
}
