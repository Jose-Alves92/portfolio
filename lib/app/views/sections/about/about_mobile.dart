import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/utils/constants.dart';

import 'widgets/about_text_widget.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        children: [
           SvgPicture.asset(
            codingImage,
            width: size.width * .4 < 350 ? 350 : size.width * .4,
          ),
          const SizedBox(height: 20),
          const AboutTextWidget(),
              ],
            ),
          
        
    );
  }
}
