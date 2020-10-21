import 'package:decimal/decimal.dart';

class Gain {
  final Decimal amount;
  final String currency;
  final Decimal percentage;

  Gain(this.amount, this.currency, this.percentage);
}
