import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/all_expenses.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            flex: 3,
            child: AllExpenses(),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
