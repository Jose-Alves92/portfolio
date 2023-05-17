import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/utils/app_methods.dart';
import 'package:portfolio/core/utils/constants.dart';

import 'widgets/presentation_picture_widget.dart';
import 'widgets/presentation_widget.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Row(
        children: const [
          Expanded(
            flex: 1,
            child: PresentationWidget()
          ),
      
          Expanded(
            flex: 2,
            child: PresentationPictureWidget()
          ),
        ],
      ),
    );
  }
}
