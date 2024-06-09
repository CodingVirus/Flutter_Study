import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: '플러터 코스',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: '시네마',
        amount: 15.69,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: '플러터 코스',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('목록'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
