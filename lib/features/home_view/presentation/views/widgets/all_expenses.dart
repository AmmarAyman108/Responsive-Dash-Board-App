import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/all_expenses_header.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/all_expenses_item_list.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemList()
        ],
      ),
    );
  }
}
