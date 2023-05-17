import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/styles/app_text_style.dart';
import 'package:portfolio/core/utils/constants.dart';
import 'package:portfolio/core/utils/app_methods.dart';

import 'widgets/presentation_picture_widget.dart';
import 'widgets/presentation_widget.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          PresentationWidget(),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.bottomCenter,
            child: PresentationPictureWidget(),
          ),
        ],
      ),
    );
  }
}
