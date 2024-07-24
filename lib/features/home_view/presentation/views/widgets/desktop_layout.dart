import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/card_and_income_section.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            flex: 3,
            child: AllExpensesAndQuickInvoiceSection(),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 2,
            child: CardAndIncomeSection(),
          ),
        ],
      ),
    );
  }
}
