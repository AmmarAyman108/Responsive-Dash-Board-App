import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/custom_button.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/custom_divider.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/latest_transaction_list_view.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/title_text_field.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Latest transactions",
                style: AppStyles.styleSemiBold20(context)),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const LatestTransactionListView(),
        const CustomDivider(),
        const QuickInvoiceFormSection()
      ],
    );
  }
}

class QuickInvoiceFormSection extends StatelessWidget {
  const QuickInvoiceFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hintText: 'Type Customer name',
                title: 'Customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                hintText: 'Type Customer Email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hintText: 'Type Item name',
                title: 'Item name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                hintText: 'USD',
                title: 'Item Mount',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              text: 'Add more details',
              backgroundColor: Colors.white,
              foregroundColor: AppColors.blueColor,
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              text: 'Send mony',
            ))
          ],
        )
      ],
    );
  }
}
