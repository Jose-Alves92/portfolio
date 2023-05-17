// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio/app/widgets/button_App_Bar.dart';
import 'package:portfolio/core/styles/app_colors.dart';

class MyDrawer extends StatelessWidget {
  final Function(int) onMenuClick;

  const MyDrawer({
    Key? key,
    required this.onMenuClick,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.colors.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ButtonAppBar(onPressed: () => onMenuClick(1), label: 'Início'),
            const SizedBox(height: 20),
            ButtonAppBar(onPressed: () => onMenuClick(2), label: 'Sobre'),
            const SizedBox(height: 20),
            ButtonAppBar(onPressed: () => onMenuClick(3), label: 'Projetos'),
            const SizedBox(height: 20),
            ButtonAppBar(onPressed: () => onMenuClick(4), label: 'Skills'),      
          ],
        ),
      ),
    );
  }
}
