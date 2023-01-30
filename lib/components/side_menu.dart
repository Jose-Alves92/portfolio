import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
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
  _downloadCurriculum() async {
    html.window.open('assets/files/curriculum-jose-alves.pdf', 'PlaceholderName');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/perfil.png"),
                ),
                const Spacer(),
                Text(
                  'Olá, eu sou José Alves',
                  style: ThemeData.dark()
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.white),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Este é o meu Portfólio Pessoal, aqui você pode encontrar um pouco mais sobre mim e meu trabalho.',
                    style: ThemeData.dark().textTheme.bodySmall,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('City:'),
                            Text('Goiânia'),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Country:'),
                            Text('Brasil'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text('Skills:'),
                        const SizedBox(height: 20),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                              child: SkillsAnimation(
                                  label: 'Dart', percentage: 0.80),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: SkillsAnimation(
                                  label: 'Flutter', percentage: 0.70),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: SkillsAnimation(
                                  label: 'Firebase', percentage: 0.60),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                              child: SkillsAnimation(
                                  label: 'HTML5', percentage: 0.50),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: SkillsAnimation(
                                  label: 'CSS3', percentage: 0.30),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: SkillsAnimation(
                                  label: 'Git/GitHub', percentage: 0.60),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text('Contato:'),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: _openWhatsApp,
                              icon: SvgPicture.asset(
                                'assets/icons/whatsapp.svg',
                                color: Colors.white,
                                semanticsLabel: 'WhatsApp',
                              ),
                            ),
                            const SizedBox(width: 30),
                            IconButton(
                              onPressed: _openGitHub,
                              icon: SvgPicture.asset(
                                'assets/icons/github.svg',
                                color: Colors.white,
                                semanticsLabel: 'GitHub',
                              ),
                            ),
                            const SizedBox(width: 30),
                            IconButton(
                              onPressed: _openLinkedin,
                              icon: SvgPicture.asset(
                                'assets/icons/linkedin.svg',
                                color: Colors.white,
                                semanticsLabel: 'Linkedin',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: _downloadCurriculum,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('CURRICULUM'),
                              SizedBox(width: 10),
                              Icon(Icons.download),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
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
