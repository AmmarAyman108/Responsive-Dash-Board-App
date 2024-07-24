import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/card_page_view.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/custom_container.dart';

class CardSection extends StatelessWidget {
  const CardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(children: [
      Expanded(
        child: const CardPageView(),
      ),
    ]);
  }
}
