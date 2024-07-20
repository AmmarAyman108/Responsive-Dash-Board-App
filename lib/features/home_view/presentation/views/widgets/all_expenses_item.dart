import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/all_expanses_item_model.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpansesItemModel itemModel;
  const AllExpensesItem({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 12,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.borderColor, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(itemModel: itemModel),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
