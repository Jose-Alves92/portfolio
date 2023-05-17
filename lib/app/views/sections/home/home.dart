import 'package:flutter/material.dart';
import 'package:portfolio/app/views/sections/home/home_desktop.dart';
import 'package:portfolio/app/views/sections/home/home_mobile.dart';
import 'package:portfolio/core/responsive/responsive.dart';


class Home extends StatelessWidget {
  const Home({
    super.key,
  
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive.isDesktop(context) ? const HomeDesktop() : const HomeMobile();
  }

}
