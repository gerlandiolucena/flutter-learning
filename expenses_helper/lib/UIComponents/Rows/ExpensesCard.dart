import 'package:expenses_helper/Entity/Expense.dart';
import 'package:expenses_helper/Theme/Colors/Colors.dart';
import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget {
  Expense expense;
  ExpenseCard({required this.expense});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(22)),
              color: ColorTheme.purple,
            ),
            child: Center(
              child: Text(expense.amount.toString(),
                style: TextStyle(
                    color: ColorTheme.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            margin: EdgeInsets.all(10),
            height: 44,
            width: 44,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(expense.description,
                  style: TextStyle(
                      color: ColorTheme.dark,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                child: Text(expense.detail,
                  style: TextStyle(
                      color: ColorTheme.grey
                  ),
                ),
              )],
          )
        ],
      ),
    );
  }
}
