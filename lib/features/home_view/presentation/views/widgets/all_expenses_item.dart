import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/all_expanses_item_model.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpansesItemModel itemModel;
  final bool isActive;
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive?ActiveAllExpensesItem(itemModel: itemModel): InActiveAllExpensesItem(itemModel: itemModel);
  }
}
