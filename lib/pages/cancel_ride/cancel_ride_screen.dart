import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/common/app_constants/image_constants.dart';
import '../../core/common/app_constants/string_constants.dart';
import '../../core/common/widgets/common_scaffold.dart';
import '../../core/common/widgets/common_text.dart';
import '../../l10n/localization.dart';
import 'bloc/cancel_ride_bloc.dart';
import '../../routes/navigation_methods.dart';
import '../../utils/extensions.dart';

import '../../core/common/widgets/common_outlined_button.dart';
import '../../core/styles/app_colors.dart';

class CancelRideScreen extends StatefulWidget {
  const CancelRideScreen({super.key});

  @override
  State<CancelRideScreen> createState() => _CancelRideScreenState();
}

class _CancelRideScreenState extends State<CancelRideScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      centerTitle: true,
      label: context.translate.cancelRide,
      body: BlocBuilder<CancelRideBloc, CancelRideState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: cancelRideReasons.length,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: AppColors.dividerColor,
                    ).paddingSymmetric(horizontal: 16, vertical: 10);
                  },
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      highlightColor: AppColors.transparentColor,
                      splashColor: AppColors.transparentColor,
                      onTap: () {
                        context
                            .read<CancelRideBloc>()
                            .add(CancelRideEvent.radioChange(value: index));
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            state.value == index
                                ? ImageConstants.select
                                : ImageConstants.deSelect,
                          ).paddingOnly(right: 10),
                          CommonText(
                            text: cancelRideReasons[index],
                          )
                        ],
                      ).paddingSymmetric(horizontal: 16),
                    ).addDominoEffect();
                  },
                ).paddingOnly(top: 20),
              ),
              CommonOutlinedButton(
                onPressed: () {
                  // go to home map screen
                  context.pop();
                  context.pop();
                  context.pop();
                },
                borderRadius: 32,
                buttonText: context.translate.done,
              ).paddingSymmetric(vertical: 32.h, horizontal: 16.w),
            ],
          );
        },
      ),
    );
  }
}
