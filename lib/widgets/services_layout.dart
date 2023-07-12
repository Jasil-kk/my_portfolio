import 'package:flutter/material.dart';
import 'package:my_portfolio/components/title_line.dart';

class ServicesLayout extends StatelessWidget {
  const ServicesLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleLine(titleText: 'SERVICES'),
      ],
    );
  }
}
