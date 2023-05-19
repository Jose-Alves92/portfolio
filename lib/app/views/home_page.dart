// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio/app/views/sections/home/home.dart';
import 'package:portfolio/app/views/sections/about/about.dart';
import 'package:portfolio/app/views/sections/project/project.dart';
import 'package:portfolio/app/views/sections/skills/skills.dart';
import 'package:portfolio/app/widgets/my_drawer.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/styles/app_text_style.dart';

import '../widgets/button_App_Bar.dart';
import 'sections/footer/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final keySectionHome = GlobalKey();
  final keySectionAbout = GlobalKey();
  final keySectionProjects = GlobalKey();
  final keySectionSkills = GlobalKey();
  final scrollController = ScrollController();

  void _onMenuClick(int value) {
    final RenderBox renderBox;

    switch (value) {
      case 1:
        renderBox =
            keySectionHome.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox =
            keySectionAbout.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox =
            keySectionProjects.currentContext!.findRenderObject() as RenderBox;
        break;
      case 4:
        renderBox =
            keySectionSkills.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception();
    }

    Offset offset = renderBox.localToGlobal(Offset.zero);

    scrollController.animateTo(offset.dy + scrollController.offset - 100,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Scaffold(
      appBar: _responsiveAppBar(context),
      drawer: Responsive.isDesktop(context)
          ? null
          : MyDrawer(onMenuClick: _onMenuClick),
      body: Container(
        constraints: const BoxConstraints(minWidth: 500, maxWidth: 1440),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.only(left: isMobile ? 20 : 80, right: isMobile ? 20 : 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Home(key: keySectionHome),
                const Divider(color: Colors.black87),
                About(key: keySectionAbout),
                const Divider(color: Colors.black87),
                Projects(key: keySectionProjects),
                const Divider(color: Colors.black87),
                Skills(key: keySectionSkills),
                const Divider(color: Colors.black87),
                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _responsiveAppBar(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);

    return isDesktop
        ? AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text(
                '<José Alves/>',
                style: context.textStyle.textLogo,
              ),
            ),
            centerTitle: false,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonAppBar(
                  label: 'Início',
                  onPressed: () =>_onMenuClick(1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonAppBar(
                  label: 'Sobre',
                  onPressed: () => _onMenuClick(2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonAppBar(
                  label: 'Projetos',
                  onPressed: () => _onMenuClick(3),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonAppBar(
                  label: 'Skills',
                  onPressed: () => _onMenuClick(4),
                ),
              ),
              const SizedBox(
                width: 80,
              )
            ],
          )
        : AppBar(
            title: Text(
              '<José Alves/>',
              style: context.textStyle.textLogo.copyWith(fontSize: 28),
            ),
            centerTitle: true,
          );
  }
}
