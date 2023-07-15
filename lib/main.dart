import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/about_layout.dart';
import 'package:my_portfolio/widgets/footer_layout.dart';
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
    final ScrollController _scrollController = ScrollController();

    void scrollToBottom() {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 2000),
        curve: Curves.easeInOut,
      );
    }
    void scrollToTop() {
      _scrollController.animateTo(
        _scrollController.position.minScrollExtent,
        duration: const Duration(milliseconds: 2000),
        curve: Curves.easeInOut,
      );
    }

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      home: Scaffold(
        appBar:  PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Header(),
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              HomeLayout(scrollToBottom: scrollToBottom),
              WorkLayout(),
              AboutMe(),
              ServicesLayout(),
              FooterLayout(scrollToTop: scrollToTop),
            ],
          ),
        ),
      ),
    );
  }
}

