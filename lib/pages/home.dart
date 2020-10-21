import 'package:cassandre_trading_bot_dashboard/components/amount.dart';
import 'package:cassandre_trading_bot_dashboard/components/position.dart';
import 'package:cassandre_trading_bot_dashboard/models/gain.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Title.
          title: Text('Cassandre dashboard'),
        ),
        body: Center(
          child: Scrollbar(
            child: ListView(
              children: <Widget>[
                AmountWidget('Gains', Decimal.parse('1.23'), 'BTC'),
                PositionWidget(
                  1,
                  'OPENING',
                  'ORDER_01',
                  null,
                  null,
                  Gain(Decimal.parse('22'), 'BTC', Decimal.parse('2')),
                  Gain(Decimal.parse('33'), 'BTC', Decimal.parse('3')),
                ),
                PositionWidget(
                  1,
                  'OPENED',
                  'ORDER_01',
                  null,
                  Gain(Decimal.parse('11'), 'BTC', Decimal.parse('1')),
                  Gain(Decimal.parse('22'), 'BTC', Decimal.parse('2')),
                  Gain(Decimal.parse('33'), 'BTC', Decimal.parse('3')),
                ),
                PositionWidget(
                  1,
                  'OPENING',
                  'ORDER_01',
                  null,
                  null,
                  null,
                  null,
                ),
                PositionWidget(
                  1,
                  'OPENED',
                  'ORDER_01',
                  null,
                  Gain(Decimal.parse('11'), 'BTC', Decimal.parse('1')),
                  Gain(Decimal.parse('22'), 'BTC', Decimal.parse('2')),
                  Gain(Decimal.parse('33'), 'BTC', Decimal.parse('3')),
                ),
                PositionWidget(
                  1,
                  'CLOSING',
                  'ORDER_01',
                  null,
                  Gain(Decimal.parse('11'), 'BTC', Decimal.parse('1')),
                  Gain(Decimal.parse('22'), 'BTC', Decimal.parse('2')),
                  Gain(Decimal.parse('33'), 'BTC', Decimal.parse('3')),
                ),
                PositionWidget(
                  1,
                  'OPENING',
                  'ORDER_01',
                  null,
                  Gain(Decimal.parse('11'), 'BTC', Decimal.parse('1')),
                  Gain(Decimal.parse('22'), 'BTC', Decimal.parse('2')),
                  Gain(Decimal.parse('33'), 'BTC', Decimal.parse('3')),
                ),
                PositionWidget(
                  1,
                  'OPENING',
                  'ORDER_01',
                  null,
                  Gain(Decimal.parse('11'), 'BTC', Decimal.parse('1')),
                  Gain(Decimal.parse('22'), 'BTC', Decimal.parse('2')),
                  Gain(Decimal.parse('33'), 'BTC', Decimal.parse('3')),
                ),
                PositionWidget(
                  1,
                  'OPENING',
                  'ORDER_01',
                  null,
                  Gain(Decimal.parse('11'), 'BTC', Decimal.parse('1')),
                  Gain(Decimal.parse('22'), 'BTC', Decimal.parse('2')),
                  Gain(Decimal.parse('33'), 'BTC', Decimal.parse('3')),
                ),
              ],
            ),
          ),
        ));
  }
}
