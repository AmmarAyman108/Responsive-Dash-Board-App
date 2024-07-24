class TransactionModel {
 final String title, subtitle, amount;
 final TransactionProcess process;

  TransactionModel({required this.title, required this.subtitle, required this.amount, required this.process});
 
}

enum TransactionProcess { deposit, withdrawal }
