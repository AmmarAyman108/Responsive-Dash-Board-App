import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/all_expenses_header.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/all_expenses_item_list.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      children: [
        CustomDropDownHeader(
          title: "All Expenses",
        ),
        SizedBox(
          height: 20,
        ),
        AllExpensesItemList(),
      ],
    );
  }
}
