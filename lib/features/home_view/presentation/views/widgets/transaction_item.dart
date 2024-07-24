
import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.grayColor,
      elevation: 0,
      child: Center(
        child: ListTile(
          title: Text(
            transaction.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleSemiBold20(context),
          ),
          subtitle: Text(
            transaction.subtitle,
            maxLines: 1,
            style: AppStyles.styleMedium16(context)
                .copyWith(color: AppColors.hintColor),
          ),
          trailing: Text(
            r"$" + transaction.amount,
            style: AppStyles.styleSemiBold24(context).copyWith(
                color: transaction.process == TransactionProcess.deposit
                    ? Colors.green
                    : Colors.red),
          ),
        ),
      ),
    );
  }
}
