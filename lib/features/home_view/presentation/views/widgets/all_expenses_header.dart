import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("All Expenses", style: AppStyles.styleSemiBold20(context)),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.borderColor, width: 1)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                width: 18,
              ),
              Transform.rotate(
                angle: -1.5709633,
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.primaryColor,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
