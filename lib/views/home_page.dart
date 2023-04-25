// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/menu.dart';
import 'package:portfolio/widgets/section_home.dart';
import 'package:portfolio/widgets/section_project.dart';
import 'package:portfolio/widgets/section_skill.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final keySectionHome = GlobalKey();
  final keySectionSkill = GlobalKey();
  final keySectionProjectos = GlobalKey();
  final keySectionContato = GlobalKey();
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
            keySectionSkill.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox =
            keySectionProjectos.currentContext!.findRenderObject() as RenderBox;
        break;
      case 4:
        renderBox =
            keySectionContato.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception();
    }

    Offset offset = renderBox.localToGlobal(Offset.zero);

    scrollController.animateTo(offset.dy + scrollController.offset,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _responsiveAppBar(context),
      drawer: screenSize.width >= 1000 ? null : Menu(onMenuClick: _onMenuClick),
      body: Container(
        color: ThemeData.dark().colorScheme.background,
        constraints: const BoxConstraints(minWidth: 500, maxWidth: 1440),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              SectionHome(key: keySectionHome, height: screenSize.height),
              SectionSkill(key: keySectionSkill, height: screenSize.height),
              SectionProjects(
                key: keySectionProjectos,
                height: screenSize.height,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _responsiveAppBar(BuildContext context) {
    bool _isDesktop = MediaQuery.of(context).size.width >= 1000;
    return AppBar(
      leading: _isDesktop
          ? null
          : Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
      title: const Text(
        'José Alves',
        style: TextStyle(fontSize: 28),
      ),
      centerTitle: _isDesktop ? false : true,
      actions: _isDesktop
          ? [
              TextButton(
                  onPressed: () => _onMenuClick(1),
                  child: const Text(
                    'Início',
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () => _onMenuClick(2),
                  child: const Text(
                    'Skills',
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () => _onMenuClick(3),
                  child: const Text(
                    'Projetos',
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () => _onMenuClick(4),
                  child: const Text(
                    'Contato',
                    style: TextStyle(color: Colors.white),
                  )),
            ]
          : null,
    );
  }

  
}
