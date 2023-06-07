import 'package:flutter/material.dart';
import 'package:expense_app/Models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            expense.title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 18, fontStyle: FontStyle.normal),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                'Rs. ${expense.amount.toStringAsFixed(2)}',
                // style: const TextStyle(
                //   color: Color.fromARGB(255, 206, 229, 207),
                // ),
              ),
              const Spacer(), // Takes up all the space between these two widgets
              Row(
                children: [
                  Icon(categoryIcons[expense.category]),
                  const SizedBox(width: 8),
                  Text(
                    expense.formattedDate,
                    // style: const TextStyle(
                    //   color: Color.fromARGB(255, 192, 214, 193),
                    // ),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
