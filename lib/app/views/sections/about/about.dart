import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/responsive.dart';

import 'about_desktop.dart';
import 'about_mobile.dart';

class About extends StatelessWidget {
  
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive.isDesktop(context) ? const AboutDesktop() : const AboutMobile();
  }
}


