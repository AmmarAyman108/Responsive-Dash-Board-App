
import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/transaction_model.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/transaction_item.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({
    super.key,
  });
  static List<TransactionModel> transactions = [
    TransactionModel(
        title: "Cash  Withdrawal",
        subtitle: "12 April 2024",
        amount: "12.5",
        process: TransactionProcess.withdrawal),
    TransactionModel(
        title: "Cash  Withdrawal",
        subtitle: "12 April 2024",
        amount: "79.45",
        process: TransactionProcess.deposit),
    TransactionModel(
        title: "Cash  Withdrawal",
        subtitle: "12 April 2024",
        amount: "44.57",
        process: TransactionProcess.deposit)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: transactions.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TransactionItem(
            transaction: transactions[index],
          );
        });
  }
}
