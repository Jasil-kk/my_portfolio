import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/colors.dart';

import '../components/title_line.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final TextStyle textStyle = GoogleFonts.mulish(
      fontSize: sw > 786 ? 20 : 16,
      fontWeight: FontWeight.w500,
      color: greyColor,
    );

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: sw > 786 ? sw * 0.1 : sw * 0.05,
          vertical: sw > 1200 ? 100 : 50),
      color: Color(0xffE8EFF0),
      child: Column(
        children: [
          TitleLine(
            titleText: 'ABOUT ME',
          ),
          Container(
            margin: EdgeInsets.only(top: sw > 1200 ? 120 : 50),
            child: sw > 1200
                ? Row(
                    children: [
                      Expanded(
                        child: TextContainer(textStyle: textStyle),
                      ),
                      SizedBox(
                        width: sw > 1500 ? 150 : 50,
                      ),
                      ImageContainer(
                        sw: sw,
                      ),
                    ],
                  )
                : Column(
                    children: [
                      TextContainer(textStyle: textStyle),
                      SizedBox(height: 20),
                      ImageContainer(
                        sw: sw,
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key, required this.sw});

  final double sw;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sw > 786 ? 516 : double.infinity,
      height: sw > 520 ? 287 : 200,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        child: sw > 786
            ? Image.asset(
                'assets/images/photo.jpg',
                fit: BoxFit.contain,
              )
            : FractionallySizedBox(
                widthFactor: 1.0,
                child: Image.asset(
                  'assets/images/photo.jpg',
                  fit: sw > 786 ? BoxFit.contain : BoxFit.fill,
                ),
              ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.textStyle,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'I\'m a dedicated developer with 2 years of experience. Proficient in Flutter React and skilled in Bootstarp, Material UI, Tailwind CSS, I enjoy tackling complex problems and pushing the boundaries of what\'s possible.',
          style: textStyle,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'I\'m committed to delivering high-quality code and contributing to impactful software applications. I value clean and maintainable code, follow best practices, and stay updated with the latest industry trends.',
          style: textStyle,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Let\'s collaborate to create efficient and innovative solutions that meet your vision and requirements.',
          style: textStyle,
        ),
      ],
    );
  }
}
