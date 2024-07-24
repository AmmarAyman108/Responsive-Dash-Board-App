
import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/card_page_view.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/custom_container.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/custom_divider.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/transaction_history.dart';

class CardAndTransactionSection extends StatelessWidget {
  const CardAndTransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(children: [
      Row(
        children: [
          Text("My Card", style: AppStyles.styleSemiBold20(context)),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      const CardPageView(),
      const CustomDivider(),
      const TransactionHistory(),
    ]);
  }
}
