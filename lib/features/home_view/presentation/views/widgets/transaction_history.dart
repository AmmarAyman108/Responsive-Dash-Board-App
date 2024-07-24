import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/transaction_history_header.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/transaction_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '12 April 2024',
          style: AppStyles.styleMedium20(context)
              .copyWith(color: AppColors.hintColor),
        ),
        const SizedBox(
          height: 10,
        ),
        const TransactionListView()
      ],
    );
  }
}
