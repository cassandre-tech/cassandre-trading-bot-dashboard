import 'package:cassandre_trading_bot_dashboard/models/gain.dart';
import 'package:flutter/material.dart';

class PositionWidget extends StatelessWidget {
  static const String NO_VALUE = '--';

  PositionWidget(
    this.id,
    this.status,
    this.openOrderId,
    this.closeOrderId,
    this.lowestCalculatedGain,
    this.highestCalculatedGain,
    this.lastCalculatedGain,
  ) {
    // Status.
    switch (this.status) {
      case 'OPENING':
        this.statusText = 'Opening';
        break;
      case 'OPENED':
        this.statusText = 'Opened';
        break;
      case 'CLOSING':
        this.statusText = 'Closing';
        break;
    }

    // Gains.
    this.lowestCalculatedGainText = getFormattedGain(lowestCalculatedGain);
    this.highestCalculatedGainText = getFormattedGain(highestCalculatedGain);
    this.lastCalculatedGainText = getFormattedGain(lastCalculatedGain);

    // Color for gains.
    this.color = Colors.blueAccent;
    if (lastCalculatedGain != null &&
        lastCalculatedGain.percentage.isNegative) {
      this.color = Colors.redAccent;
    }
  }

  final int id;
  final String status;
  final String openOrderId;
  final String closeOrderId;
  final Gain lowestCalculatedGain;
  final Gain highestCalculatedGain;
  final Gain lastCalculatedGain;

  String statusText;
  String lowestCalculatedGainText;
  String highestCalculatedGainText;
  String lastCalculatedGainText;
  Color color;

  String getFormattedGain(final Gain gain) {
    if (gain == null) {
      return NO_VALUE;
    } else {
      return '${gain.amount} ${gain.currency} (${gain.percentage})';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.color,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Position $id ($statusText)",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          Divider(
            color: Colors.white,
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      'Lowest gain',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      '$lowestCalculatedGainText',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      'Highest gain',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      '$highestCalculatedGainText',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      'Latest gain',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      '$lastCalculatedGainText',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
