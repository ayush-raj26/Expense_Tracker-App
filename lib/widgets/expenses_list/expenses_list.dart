import 'package:expense_app/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_app/Models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.25),
          margin: const EdgeInsets.all(8),
          // margin : EdgeInsets.symmetric(horizontal: Theme.of(context).cardTheme.margin!.horizontal,)
        ),
        key: ValueKey(expenses[index]),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(expenses[index]),
      ),
    );
  }
}

// Should not use Column for list whose length we don't know about as the list can go very very long
// We can use ListView as it gives us a scrollable list on its own
// .builder function makes the items of list only when they are about to be visible 
// this way the app is optimised for performance