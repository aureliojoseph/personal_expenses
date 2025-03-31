import 'package:flutter/material.dart';

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
      body: Center(child: Text('My Personal Expenses App')),
    );
  }
}
