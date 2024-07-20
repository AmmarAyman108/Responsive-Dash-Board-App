
import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_assets.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/all_expanses_item_model.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/all_expenses_item.dart';

class AllExpensesItemList extends StatelessWidget {
  const AllExpensesItemList({
    super.key,
  });
  static List<AllExpansesItemModel> items = [
    AllExpansesItemModel(
        date: 'April 2024',
        image: AppAssets.imagesBalance, 
        price: r'$77.846',
        title: 'Balance'),
    AllExpansesItemModel(
        date: 'April 2024',
        image: AppAssets.imagesIncome,
        price: r'$20.846',
        title: 'Income'),
    AllExpansesItemModel(
        date: 'April 2024',
        image: AppAssets.imagesExpenses,
        price: r'$59.846',
        title: 'Expenses'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map(
            (e) => Expanded(
              child: AllExpensesItem(
                itemModel: e,
              ),
            ),
          )
          .toList(),
    );
  }
}
