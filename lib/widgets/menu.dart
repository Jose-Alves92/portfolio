// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatelessWidget {
  final Function(int) onMenuClick;

  const Menu({
    Key? key,
    required this.onMenuClick,
  }) : super(key: key);

  _openWhatsApp() async {
    var whatsAppUrl =
        Uri.parse("https://wa.me/5562994629636?text=Olá,%20tudo%20bem?");
    await launchUrl(whatsAppUrl);
  }

  _openLinkedin() async {
    var linkedinUrl =
        Uri.parse("https://www.linkedin.com/in/josealves92/");
    await launchUrl(linkedinUrl);
  }

  _openGitHub() async {
    var gitHubUrl =
        Uri.parse("https://github.com/Jose-Alves92");
    await launchUrl(gitHubUrl);
  }
//https://jose-alves-portfolio.web.app/assets/
  _downloadCurriculum() {
    var urlCV = '/assets/files/curriculum-jose-alves.pdf';
    // var anchorElement = html.AnchorElement(href: urlCV);
    // anchorElement.download = 'Curriculum_Jose_Alves';
    // anchorElement.click();
    html.window.open(urlCV, 'Curriculum José');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(leading: Icon(Icons.home), title: Text('Início'), onTap: () => onMenuClick(1),),
          ListTile(leading: Icon(Icons.architecture), title: Text('Skills'), onTap: () => onMenuClick(2),),
          ListTile(leading: Icon(Icons.work), title: Text('Projetos'), onTap: () => onMenuClick(3),),
          ListTile(leading: Icon(Icons.contact_page), title: Text('Contato'), onTap: () => onMenuClick(4),),

        ],
      ),
    );
  }
}

class SkillsAnimation extends StatelessWidget {
  final String label;
  final double percentage;
  const SkillsAnimation({
    Key? key,
    required this.label,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: percentage),
            duration: const Duration(seconds: 2),
            builder: (context, value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                ),
                Center(
                  child: Text('${(value * 100).toInt()}%'),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: ThemeData.dark().textTheme.subtitle2,
        ),
      ],
    );
  }
}
