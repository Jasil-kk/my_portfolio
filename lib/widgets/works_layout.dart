import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/colors.dart';
import 'package:my_portfolio/components/title_line.dart';

class WorkLayout extends StatelessWidget {
  const WorkLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: sw > 786 ? sw * 0.1 : sw * 0.05, vertical: sw * 0.1),
      child: Column(
        children: [
          const TitleLine(titleText: 'WORK',),
          WorksCard(
            sw: sw,
            backgroundColor: const Color(0xffEDF0F9),
            headingText: 'Re-Design For The App\n Made Easy',
            paraText:
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
            buttonForgroundColor: const Color(0xff6878AC),
            buttonBackgroundColor: const Color(0xffD9DEEE),
            cardImagePath: 'assets/images/mobile-screen_shot.png',
          ),
          WorksCard(
            sw: sw,
            backgroundColor: const Color(0xffEAEAEA),
            headingText: 'SaaSup Website For Unique Start-Up Brands',
            paraText:
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
            buttonForgroundColor: const Color(0xff525665),
            buttonBackgroundColor: const Color(0xffDFDFDF),
            cardImagePath: 'assets/images/screenshot1.png',
          ),
          WorksCard(
            sw: sw,
            backgroundColor: const Color(0xffABEBFF),
            headingText: 'AI vision technology to improve security',
            paraText:
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
            buttonForgroundColor: const Color(0xff5AB5D1),
            buttonBackgroundColor: const Color(0xffFFFFFF),
            cardImagePath: 'assets/images/screenshot2.png',
          ),
          WorksCard(
            sw: sw,
            backgroundColor: const Color(0xffFFF3E9),
            headingText: 'Prototyping a plugin\n to help designers',
            paraText:
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
            buttonForgroundColor: const Color(0xffAE7E56),
            buttonBackgroundColor: const Color(0xffECCFB8),
            cardImagePath: 'assets/images/screenshot3.png',
          ),
        ],
      ),
    );
  }
}


class WorksCard extends StatelessWidget {
  const WorksCard({
    super.key,
    required this.sw,
    required this.headingText,
    required this.paraText,
    required this.backgroundColor,
    required this.buttonBackgroundColor,
    required this.buttonForgroundColor,
    required this.cardImagePath,
  });

  final double sw;
  final String headingText;
  final String paraText;
  final Color backgroundColor;
  final Color buttonForgroundColor;
  final Color buttonBackgroundColor;
  final String cardImagePath;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      elevation: 0.0,
      textStyle: GoogleFonts.mulish(
        fontSize: sw > 786 ? 18 : 14,
        fontWeight: FontWeight.w600,
      ),
      foregroundColor: buttonForgroundColor,
      backgroundColor: buttonBackgroundColor,
      minimumSize: const Size(88, 36),
      padding: EdgeInsets.symmetric(
          horizontal: sw > 786 ? 25 : 16, vertical: sw > 786 ? 18 : 12),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
    return Container(
      margin: EdgeInsets.only(top: sw > 786 ? 70 : 20),
      height: sw > 768 ? 500 : null,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backgroundColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  headingText,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: sw > 786 ? 36 : 24,
                    fontWeight: FontWeight.w600,
                    color: darkBlueColor,
                  ),
                ),
                SizedBox(
                  height: sw > 786 ? 20 : 10,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('User Research'),
                      style: buttonStyle,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('UX Design'),
                      style: buttonStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: sw > 786 ? 20 : 10,
                ),
                Text(
                  paraText,
                  style: GoogleFonts.mulish(
                      fontSize: sw > 786 ? 20 : 16,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: sw > 786 ? 20 : 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Read Case Study',
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: sw > 786 ? 22 : 14,
                        horizontal: sw > 786 ? 35 : 20),
                    backgroundColor: orangeColor,
                    foregroundColor: Colors.white,
                    textStyle: GoogleFonts.mulish(
                      fontWeight: FontWeight.w600,
                      fontSize: sw > 786 ? 18 : 14,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          sw > 960
              ? Image.asset(
                cardImagePath,
                width: sw > 1160 ? 392 : 250,
                height: double.infinity,
                fit: BoxFit.contain,
              )
              : const SizedBox(),
        ],
      ),
    );
  }
}
