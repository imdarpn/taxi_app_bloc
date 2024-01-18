import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../routes/navigation_methods.dart';
import '../../core/common/app_constants/image_constants.dart';
import '../../core/common/widgets/widgets.dart';
import '../../core/enums/theme_type.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';
import '../../l10n/localization.dart';
import '../../utils/extensions.dart';

import '../../repository/theme/theme_bloc.dart';
import 'bloc/rating_bloc.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      label: context.translate.rating,
      centerTitle: true,
      bodyPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return BlocBuilder<RatingBloc, RatingState>(
            builder: (context, state) {
              return Center(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    /// view
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 40.h,
                      ),
                      decoration: BoxDecoration(
                        color: themeState.themeType == ThemeType.lightTheme
                            ? AppColors.whiteColor
                            : AppColors.blackColor,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: themeState.themeType == ThemeType.lightTheme
                                ? AppColors.blackColor.withOpacity(0.07)
                                : AppColors.whiteColor.withOpacity(0.07),
                            offset: const Offset(0, 4),
                            blurRadius: 14,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          /// driver name
                          CommonText(
                            text: "Alex Robin",
                            fontSize: FontConstants.font_20,
                            fontWeight: FontWeightConstants.medium,
                          ).addDominoEffect(),

                          /// car details
                          Text.rich(
                            TextSpan(
                              text: "Volkswagen - ",
                              children: [
                                TextSpan(
                                  text: "HG5045",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        fontWeight:
                                            FontWeightConstants.semiBold,
                                        fontFamily:
                                            FontFamilyConstants.fontName,
                                      ),
                                )
                              ],
                            ),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontSize: FontConstants.font_14,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: FontFamilyConstants.fontName,
                                ),
                            textAlign: TextAlign.center,
                          ).addDominoEffect(),

                          /// rating
                          CommonText(
                            text: context.translate.howWasYourTripWith("Alex"),
                            fontSize: FontConstants.font_20,
                            fontWeight: FontWeightConstants.medium,
                          ).addDominoEffect().paddingOnly(top: 16.h),

                          RatingBar.builder(
                            initialRating: 0,
                            itemSize: 34,
                            unratedColor: AppColors.unratedColor,
                            itemPadding: EdgeInsets.symmetric(horizontal: 6.w),
                            itemBuilder: (context, index) {
                              return SvgPicture.asset(ImageConstants.starIcon);
                            },
                            onRatingUpdate: (double value) {},
                          ).addDominoEffect().paddingSymmetric(vertical: 16.h),

                          /// comments field
                          CommonTextField(
                            hintText: context.translate.additionalComments,
                            textInputType: TextInputType.multiline,
                            textInputAction: TextInputAction.newline,
                            minLines: 1,
                            maxLines: 3,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 24.w,
                              vertical: 8.h,
                            ),
                          ).paddingSymmetric(horizontal: 32.w, vertical: 8.h),

                          /*/// tip
                      CommonText(
                        text: context.translate.addATipTo("alex robin"),
                        fontWeight: FontWeightConstants.medium,
                        fontSize: FontConstants.font_20,
                      ),

                      /// tip amount
                      SizedBox(
                        height: 65.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.tipAmountList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                context
                                    .read<RatingBloc>()
                                    .add(RatingEvent.tipSelected(index: index));
                              },
                              child: Container(
                                height: 65.h,
                                width: 82.w,
                                decoration: BoxDecoration(
                                  color: state.tipAmountList[index].isSelected
                                      ? AppColors.primaryColor
                                      : AppColors.containerColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 4),
                                child: CommonText(
                                  text: "\$${state.tipAmountList[index].amount}",
                                  color: state.tipAmountList[index].isSelected
                                      ? AppColors.whiteColor
                                      : AppColors.blackColor,
                                  fontSize: FontConstants.font_20,
                                ),
                              ),
                            ).paddingSymmetric(horizontal: 24.w);
                          },
                        ),
                      ),

                      /// add custom
                      GestureDetector(
                        onTap: () {

                        },
                        child: CommonText(
                          text: context.translate.addToCustom,
                        ),
                      ),*/

                          /// submit button
                          CommonFilledButton(
                            onPressed: () {
                              context.pop();
                            },
                            buttonText: context.translate.submitReview,
                          ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
                        ],
                      ),
                    ),

                    /// image
                    Transform.translate(
                      offset: Offset(0, -64.h),
                      child: const CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage(
                          ImageConstants.profile,
                        ),
                      ),
                    ).addDominoEffect(),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
