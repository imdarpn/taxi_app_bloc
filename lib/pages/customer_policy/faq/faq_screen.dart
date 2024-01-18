import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import '../../../core/common/widgets/common_scaffold.dart';
import '../../../core/styles/app_colors.dart';
import 'bloc/faq_bloc.dart';
import 'component/expansion_tile.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';


class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      centerTitle: true,
      bodyPadding: const EdgeInsets.all(0),
      label: context.translate.faq,
      body: BlocConsumer<FaqBloc, FaqState>(
        builder: (context, state) {
          return ListView.separated(
            key: Key(state.expandedValue.toString()),
            padding: EdgeInsets.zero,
            primary: true,
            shrinkWrap: true,
            itemCount: state.faqList.length,
            itemBuilder: (context, index) {
              return CommonExpansionTile(faqModel: state.faqList[index]);
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: AppColors.dividerColor,
              ).paddingSymmetric(horizontal: 16);
            },
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
