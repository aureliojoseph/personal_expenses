import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/graph_widget.dart';
import 'package:personal_expenses/widgets/transaction_list_widget.dart';

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
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personal Expenses')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [const GraphWidget(), const TransactionListWidget()],
      ),
    );
  }
}
