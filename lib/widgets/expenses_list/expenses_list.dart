import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import "package:expense_tracker/models/expense.dart";

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expList,
    required this.onRemoveExpense,
  });

  final List<Expense> expList;
  final Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return expList.isEmpty
        ? Center(child: Text("Add an expense"))
        : ListView.builder(
            itemCount: expList.length,
            itemBuilder: (ctx, index) => Dismissible(
              key: ValueKey(expList[index]),
              background: Container(
                color: Theme.of(context).colorScheme.error.withOpacity(0.75),
                margin: EdgeInsets.symmetric(
                  horizontal: Theme.of(context).cardTheme.margin!.horizontal,
                ),
              ),
              onDismissed: (direction) {
                onRemoveExpense(expList[index]);
              },
              child: ExpenseItem(expense: expList[index]),
            ),
          );
  }
}
