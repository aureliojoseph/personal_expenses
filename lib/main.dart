import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/graph_widget.dart';
import 'package:personal_expenses/widgets/transaction_list_widget.dart';

import 'models/transaction.dart';

void main() {
  runApp(const PersonalExpenses());
}

class PersonalExpenses extends StatelessWidget {
  const PersonalExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Personal Expenses', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personal Expenses')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const GraphWidget(),
          TransactionListWidget(transactions: _transactions),
        ],
      ),
    );
  }
}
