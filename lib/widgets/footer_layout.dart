import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/colors.dart';

class FooterLayout extends StatelessWidget {
  const FooterLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;

    final TextStyle textsStyle = GoogleFonts.playfairDisplay(
      fontSize: sw > 786 ? 22 : 16,
      fontWeight: FontWeight.w400,
      color: darkBlueColor,
    );

    return Container(
      color: Color(0xffF4EDF8),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: sw > 786 ? 100 : 50),
            child: Image.asset(
              'assets/images/scroll-to-top.png',
              width: sw > 786 ? 120 : 80,
              height: sw > 786 ? 120 : 80,
            ),
          ),
          Text(
            'Passionate About Creating Meaningful And Captivating Experiences Through Design And Technology.',
            style: GoogleFonts.mulish(
              fontSize: sw > 786 ? 40 : 25,
              fontWeight: FontWeight.w600,
              color: darkBlueColor,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: sw > 786 ? sw * 0.1 : sw * 0.05,
              vertical: 60,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xffD092BA),
                ),
                bottom: BorderSide(
                  color: Color(0xffD092BA),
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: sw > 786 ? MainAxisAlignment.start : MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Home', style: textsStyle),
                        Text('Work', style: textsStyle),
                        Text('Me', style: textsStyle),
                      ],
                    ),
                    SizedBox(width: sw > 786 ? 100 : 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('LinkedIn', style: textsStyle),
                        Text('Instagram', style: textsStyle),
                        Text('Twitter', style: textsStyle),
                      ],
                    ),
                    SizedBox(
                      width: sw > 1086 ? 250 : 30,
                    ),
                    if (sw > 786) MailingContainer(sw: sw),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MailingContainer extends StatelessWidget {
  const MailingContainer({
    Key? key,
    required this.sw,
  }) : super(key: key);
  final double sw;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                style: GoogleFonts.playfairDisplay(
                  fontSize: sw > 786 ? 20 : 16,
                  fontWeight: FontWeight.w500,
                  color: darkBlueColor,
                ),
                decoration: InputDecoration(
                  hintText: 'Interested in working together? Drop me a line',
                  hintStyle: TextStyle(color: darkBlueColor),
                  filled: true,
                  hoverColor: Colors.white,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(width: 10), // Add spacing between the text field and the button
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Copy Email',
                style: GoogleFonts.mulish(
                  fontSize: sw > 786 ? 18 : 14,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: darkBlueColor,
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.all(sw > 786 ? 20 : 15), // Adjust padding as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
