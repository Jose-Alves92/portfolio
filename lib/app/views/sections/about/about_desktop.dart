import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/utils/app_methods.dart';
import 'package:portfolio/core/utils/constants.dart';

import 'widgets/about_text_widget.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 80, bottom: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/coding.svg',
            width: size.width * .4 > 500 ? 500 : size.width * .4,
          ),
          const AboutTextWidget(),
         
        ],
      ),
    );
  }
}
