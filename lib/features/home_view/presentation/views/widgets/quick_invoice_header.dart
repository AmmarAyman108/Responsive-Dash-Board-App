
import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Quick invoice", style: AppStyles.styleSemiBold20(context)),
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
          backgroundColor: AppColors.grayColor,
          radius: 24,
          child: Icon(Icons.add, color: AppColors.blueColor),
        )
      ],
    );
  }
}
