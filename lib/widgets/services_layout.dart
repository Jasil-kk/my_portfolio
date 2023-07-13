import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/colors.dart';
import 'package:my_portfolio/components/title_line.dart';

class ServicesLayout extends StatelessWidget {
  const ServicesLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: sw > 786 ? sw * 0.1 : sw * 0.05,
          vertical: sw > 1786 ? 100 : 50),
      child:  Column(
        children: [
          TitleLine(titleText: 'SERVICES'),
          Container(
            margin: EdgeInsets.only(top: sw > 786 ? 70 : 50),
            child: Wrap(
              spacing: 25.0, // Horizontal spacing between children
              runSpacing: 25.0, // Vertical spacing between lines
              children: <Widget>[
                ServicesCard(
                  sw: sw,
                  cardImagePath: 'assets/images/mobile-icon.png',
                  headerText: 'Mobile App',
                  parText:
                      'It is a long established fact that reader will be distractedthe.',
                  listText1: 'Web and Mobile App Design',
                  listText2: 'Front-end Development',
                ),
                ServicesCard(
                  sw: sw,
                  cardImagePath: 'assets/images/ui_ux-icon.png',
                  headerText: 'UX/UI design',
                  parText:
                      'It is a long established fact that reader will be distracted.',
                  listText1: 'Web and Mobile App Design',
                  listText2: 'Front-end Development',
                ),
                ServicesCard(
                  sw: sw,
                  cardImagePath: 'assets/images/direction-icon.png',
                  headerText: 'Strategy & Direction',
                  parText:
                      'It is a long established fact that reader will be distracted.',
                  listText1: 'Web and Mobile App Design',
                  listText2: 'Front-end Development',
                ),
                ServicesCard(
                  sw: sw,
                  cardImagePath: 'assets/images/app-icon.png',
                  headerText: 'App Development',
                  parText:
                      'It is a long established fact that reader will be distracted.',
                  listText1: 'Web and Mobile App Design',
                  listText2: 'Front-end Development',
                ),
                ServicesCard(
                  sw: sw,
                  cardImagePath: 'assets/images/design-icon.png',
                  headerText: 'Motion web design',
                  parText:
                      'It is a long established fact that reader will be distracted.',
                  listText1: 'Web and Mobile App Design',
                  listText2: 'Front-end Development',
                ),
                ServicesCard(
                  sw: sw,
                  cardImagePath: 'assets/images/web-icon.png',
                  headerText: 'Website development',
                  parText:
                      'It is a long established fact that reader will be distracted.',
                  listText1: 'Web and Mobile App Design',
                  listText2: 'Front-end Development',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ServicesCard extends StatelessWidget {
  const ServicesCard(
      {super.key,
        required this.sw,
      required this.headerText,
      required this.parText,
      required this.listText1,
      required this.listText2,required this.cardImagePath});

  final double sw;
  final String headerText;
  final String parText;
  final String listText1;
  final String listText2;
  final String cardImagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: sw > 786 ? 390 : double.infinity,
      height:  sw > 786 ? 390 : null,
      padding: EdgeInsets.symmetric(horizontal: sw > 786 ? 34 : 20, vertical: sw > 786 ? 56 : 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width:  2,
          color: const Color(0xffE0E0E0),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            cardImagePath,
            width:  sw > 786 ? 56 : 50,
            height:  sw > 786 ? 55 : 50,
          ),
           SizedBox(
            height:sw > 786 ?  25 : 15,
          ),
          Text(
            headerText,
            style: GoogleFonts.playfairDisplay(
              color: darkBlueColor,
              fontSize:sw > 786 ? 30 : 22,
              fontWeight: FontWeight.w600,
            ),
          ),
           SizedBox(
            height: sw > 786 ? 18 : 14,
          ),
          Text(
            parText,
            style: GoogleFonts.mulish(
              fontWeight: FontWeight.w500,
              fontSize:sw > 786 ? 20 : 16,
              color: greyColor,
            ),
          ),
           SizedBox(
            height: sw > 786 ?  25 : 15,
          ),
          Column(
            children: [
              Row(
                children: [
                  Bullet(sw: sw,),
                  SizedBox(width: 10,),
                  Text(
                    listText1,
                    style: GoogleFonts.mulish(
                      fontSize: sw > 786 ? 20 : 16,
                      fontWeight: FontWeight.w600,
                      color: darkBlueColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Bullet(sw: sw,),
                  SizedBox(width: 10,),
                  Text(
                    listText2,
                    style: GoogleFonts.mulish(
                      fontSize: sw > 786 ? 20 : 16,
                      fontWeight: FontWeight.w600,
                      color: darkBlueColor,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Bullet extends StatelessWidget {
  const Bullet({super.key,required this.sw});
final double sw;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: sw > 786 ? 12 : 8,
      height:sw > 786 ? 12 : 8,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: orangeColor,
      ),
    );
  }
}
