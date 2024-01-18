import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import '../../routes/navigation_methods.dart';
import 'components/landing_view_widget.dart';
import 'components/page_indicator_widget.dart';
import '../../utils/extensions.dart';

import '../../core/common/widgets/widgets.dart';
import 'bloc/onboarding_bloc.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);

    return CommonScaffold(
      showAppBar: true,
      showBackIcon: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// page view
            BlocBuilder<OnboardingBloc, OnboardingState>(
              builder: (context, state) {
                return SizedBox(
                  height: 600.h,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: state.onboardingModelList.length,
                    onPageChanged: (value) {
                      context.read<OnboardingBloc>().add(
                            OnboardingEvent.pageChangeEvent(pageIndex: value),
                          );
                    },
                    itemBuilder: (context, index) {
                      return LandingViewWidget(
                        onboardingModel: state.onboardingModelList[index],
                      );
                    },
                  ),
                );
              },
            ),

            /// page indicator
            BlocBuilder<OnboardingBloc, OnboardingState>(
              builder: (context, state) {
                return PageIndicatorWidget(
                  indicatorCount: state.onboardingModelList.length,
                  currentPageIndex: state.currentPageIndex,
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CommonFilledButton(
        onPressed: () {
          context.pushReplacementNamed(Routes.login);
        },
        buttonText: context.translate.getStarted,
      ).paddingSymmetric(horizontal: 100.w, vertical: 16.h),
    );
  }
}
