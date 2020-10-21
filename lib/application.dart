import 'package:cassandre_trading_bot_dashboard/pages/home.dart';
import 'package:cassandre_trading_bot_dashboard/themes/default_theme.dart';
import 'package:flutter/material.dart';

// This widget is the root of our application.
class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cassandre trading bot dashboard', // Application title.
      theme: defaultTheme(), // Defined in themes/default_theme.dart.
      home: HomePage(), // Defines homepage.
    );
  }
}
