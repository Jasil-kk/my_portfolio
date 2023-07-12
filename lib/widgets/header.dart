import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:my_portfolio/colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: sw > 786 ? sw * 0.1 : 0,
      ),
      child: AdaptiveNavBar(
        screenWidth: sw,
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
              height: sw > 786 ? 30 : 25,
              width: sw > 786 ? 30 :25,
            ),
            SizedBox(width: 10,),
            Text("Developer"),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actionsIconTheme: IconThemeData(color: Color(0xff2A2C32)),
        titleTextStyle: GoogleFonts.mulish(
            fontSize: sw > 786 ? 40 : 30,
            fontWeight: FontWeight.w800,
            color: darkBlueColor),
        toolbarTextStyle: GoogleFonts.mulish(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: lightBlackColor,
        ),
        navBarItems: [
          NavBarItem(
            text: "Home",
            onTap: () {
              Navigator.pushNamed(context, "routeName");
            },
          ),
          NavBarItem(
            text: "Work",
            onTap: () {
              Navigator.pushNamed(context, "routeName");
            },
          ),
          NavBarItem(
            text: "Me",
            onTap: () {
              Navigator.pushNamed(context, "routeName");
            },
          ),
          NavBarItem(
            text: "Fun",
            onTap: () {
              Navigator.pushNamed(context, "routeName");
            },
          ),
        ],
      ),
    );
  }
}
