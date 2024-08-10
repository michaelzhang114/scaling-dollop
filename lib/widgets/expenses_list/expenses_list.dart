import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import "package:expense_tracker/models/expense.dart";

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expList,
  });

  final List<Expense> expList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expList.length,
      itemBuilder: (ctx, index) => ExpenseItem(expense: expList[index]),
    );
  }
}
