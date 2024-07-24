import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/card_and_transaction_section.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/income_section.dart';

class CardAndIncomeSection extends StatelessWidget {
  const CardAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CardAndTransactionSection(),
        SizedBox(
          height: 20,
        ),
        Expanded(child: IncomeSection())
      ],
    );
  }
}
