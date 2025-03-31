import 'package:flutter/material.dart';

class TransactionListWidget extends StatelessWidget {
  const TransactionListWidget({super.key, required this.transactions});

  final List transactions;

  @override
  Widget build(BuildContext context) {
    List<Widget> transactionWidgets =
        transactions.map((transaction) {
          return Card(
            child: ListTile(
              title: Text(transaction.title),
              subtitle: Text(transaction.date.toString()),
              trailing: Text('\$${transaction.amount}'),
            ),
          );
        }).toList();
    return Expanded(child: ListView(children: transactionWidgets));
  }
}
