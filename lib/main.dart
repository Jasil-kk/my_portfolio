import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/about_layout.dart';
import 'package:my_portfolio/widgets/header.dart';
import 'package:my_portfolio/widgets/home_layout.dart';
import 'package:my_portfolio/widgets/services_layout.dart';
import 'package:my_portfolio/widgets/works_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      home: Scaffold(
        appBar:  PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Header(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeLayout(),
              WorkLayout(),
              AboutMe(),
              ServicesLayout(),
            ],
          ),
        ),
      ),
    );
  }
}
