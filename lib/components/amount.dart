import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

class AmountWidget extends StatelessWidget {
  AmountWidget(
    this.title,
    this.value,
    this.currency,
  );

  final String title;
  final Decimal value;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF33333D),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '$title',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            '$value $currency',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
