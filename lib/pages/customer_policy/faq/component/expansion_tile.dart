import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';
import '../../../../core/common/view_models/faq_model.dart';
import '../../../../core/common/widgets/common_text.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/font_constants.dart';
import '../bloc/faq_bloc.dart';

class CommonExpansionTile extends StatelessWidget {
  final FaqModel faqModel;

  const CommonExpansionTile({
    super.key,
    required this.faqModel,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FaqBloc, FaqState>(
      builder: (context, state) {
        return Theme(
          data: Theme.of(context).copyWith(dividerColor: AppColors.transparentColor),
          child: ExpansionTile(
            key: Key(faqModel.id.toString()),
            initiallyExpanded: faqModel.id == state.expandedValue,
            expandedAlignment: Alignment.centerLeft,
            onExpansionChanged: (newState) => context.read<FaqBloc>().add(
                  FaqEvent.expansionChanged(
                    index: newState ? faqModel.id! : -1,
                  ),
                ),
            title: CommonText(
              text: faqModel.question!,
              fontWeight: FontWeightConstants.medium,
              fontSize: FontConstants.font_16,
            ),
            iconColor: AppColors.expansionColor,
            textColor: AppColors.primaryColor,
            collapsedIconColor: AppColors.primaryColor,
            childrenPadding: const EdgeInsets.only(
              left: 15,
              right: 10,
              bottom: 15,
            ),
            trailing: !faqModel.isExpanded
                ? const Icon(CupertinoIcons.plus)
                : const Icon(CupertinoIcons.minus),
            children: [
              CommonText(
                text: faqModel.answer!,
                fontSize: FontConstants.font_14,
                fontWeight: FontWeightConstants.regular,
                color: AppColors.subExpansionColor,
              ),
            ],
          ),
        );
      },
    );
  }

/*Theme(
      data: ThemeData(dividerColor: ColorConstants.transparentColor),
      child: Obx(() {
        return ExpansionTile(
          key: Key(index.toString()),
          initiallyExpanded: index == controller.faqState.isSelected.value,
          expandedAlignment: Alignment.centerLeft,
          onExpansionChanged: ((newState) {
            if (newState) {
              controller.faqState.isSelected.value = index;
            } else {
              controller.faqState.isSelected.value = -1;
            }
          }),
          title: Text(
            question,
            style: const TextStyle(
              fontWeight: FontWeightConstants.semiBold,
              fontSize: FontConstants.font_14,
              fontFamily: FontFamilyConstants.fontName,
            ),
          ),
          iconColor: ColorConstants.primaryColor,
          textColor: ColorConstants.primaryColor,
          collapsedIconColor: ColorConstants.primaryColor,
          childrenPadding: const EdgeInsets.only(
            left: 15,
            right: 10,
            bottom: 15,
          ),
          backgroundColor: ColorConstants.fieldColor.withOpacity(0.7),
          children: [
            Text(
              answer ?? "",
              style: const TextStyle(
                fontWeight: FontWeightConstants.medium,
                fontSize: FontConstants.font_14,
                fontFamily: FontFamilyConstants.fontName,
              ),
            ),
          ],
        );
      }).paddingSymmetric(horizontal: 5),
    )*/
}
