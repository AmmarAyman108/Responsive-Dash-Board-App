import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/custom_container.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/latest_transaction_section.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 20,
        ),
        LatestTransactionSection(),
        
      ],
    );
  }
}