import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/colors.dart';

class HomeLayout extends StatelessWidget {

  final VoidCallback? scrollToBottom;
  const HomeLayout({Key? key,this.scrollToBottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];
    final sw = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(top: 100),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.contain,
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hi, I\'m ',
                style: GoogleFonts.playfairDisplay(
                  fontSize: sw > 786 ? 70 : 50,
                  fontWeight: FontWeight.w600,
                  color: darkBlueColor,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Jasil',
                    textStyle: GoogleFonts.playfairDisplay(
                      fontSize: sw > 786 ? 80 : 60,
                      color: Colors.white12,
                      fontWeight: FontWeight.w800,
                    ),
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'a',
                  style: GoogleFonts.mulish(
                    fontSize: sw > 786 ? 50 : 30,
                    color: darkBlueColor,
                  ),
                ),
                TextSpan(
                  text: ' Flutter Developer\n',
                  style: GoogleFonts.mulish(
                    fontSize: sw > 786 ? 46 : 30,
                    fontWeight: FontWeight.w700,
                    color: orangeColor,
                  ),
                ),
                TextSpan(
                  text: 'with 10 years experience\n',
                  style: GoogleFonts.mulish(
                    fontSize: sw > 786 ? 40 : 26,
                    fontWeight: FontWeight.w600,
                    color: darkBlueColor,
                  ),
                ),
                TextSpan(
                  text: ' working at',
                  style: GoogleFonts.mulish(
                    fontSize: sw > 786 ? 40 : 26,
                    fontWeight: FontWeight.w600,
                    color: darkBlueColor,
                  ),
                ),
                TextSpan(
                  text: ' Xanthron',
                  style: GoogleFonts.mulish(
                    fontSize: sw > 786 ? 40 : 26,
                    fontWeight: FontWeight.w800,
                    color: lightBlueColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: scrollToBottom,
            child: Container(
              margin: EdgeInsets.only(top: sw > 786 ? 100 : 50),
              child: Image.asset(
                'assets/images/scroll-to-bottom.png',
                width: sw > 786 ? 120 : 80,
                height: sw > 786 ? 120 : 80,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
