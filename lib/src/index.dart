import 'package:flutter/material.dart';
import 'package:portfolioapp/src/screens/dashboard/index.dart';
import 'package:portfolioapp/styles/colors.dart';

class YKPortfolio extends StatelessWidget {
  const YKPortfolio({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yan Kaiky',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: AppColors.primaryBG,
      ),
      home: Dashboard(),
    );
  }
}
