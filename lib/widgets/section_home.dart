import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionHome extends StatelessWidget {
  final double height;
  const SectionHome({
    super.key,
    required this.height,
  });

  void _openUrl(String nome) async {
    final Uri url;
    switch (nome) {
      case 'WhatsApp':
        url = Uri.parse('https://wa.me/5562984500558?text=Olá,%20tudo%20bem?');
        break;
      case 'Linkedin':
        url = Uri.parse("https://www.linkedin.com/in/josealves92/");
        break;
      case 'GitHub':
        url = Uri.parse('https://github.com/Jose-Alves92');
        break;
      default:
        throw Exception();
    }
    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      height: height,
      width: double.infinity,
      child: LayoutBuilder(
        builder: (_, boxConstraints) {
          return boxConstraints.maxWidth >= 1000
              ? projectDesktop(context)
              : projectMobile(context);
        },
      ),
    );
  }

  Widget projectMobile(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              color: Colors.teal,
              image: DecorationImage(
                  image: AssetImage('../assets/images/perfil.png'),
                  fit: BoxFit.contain),
              shape: BoxShape.circle),
        ),
        const SizedBox(height: 20),
        const Text('Olá, 👋',
            style: TextStyle(
              fontSize: 28,
            )),
        const SizedBox(height: 20),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Eu sou',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              TextSpan(
                text: ' José Alves',
                style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Desenvolvedor Mobile',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                  shape: const CircleBorder(
                    side: BorderSide(color: Colors.teal),
                  ),
                  padding: const EdgeInsets.all(12)),
              onPressed: () => _openUrl('WhatsApp'),
              child: SvgPicture.asset(
                'assets/icons/whatsapp.svg',
                color: Colors.teal,
                semanticsLabel: 'WhatsApp',
              ),
            ),
            // const SizedBox(width: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                  shape: const CircleBorder(
                    side: BorderSide(color: Colors.teal),
                  ),
                  padding: const EdgeInsets.all(12)),
              onPressed: () => _openUrl('GitHub'),
              child: SvgPicture.asset(
                'assets/icons/github.svg',
                color: Colors.teal,
                semanticsLabel: 'GitHub',
              ),
            ),
            // const SizedBox(width: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                  shape: const CircleBorder(
                    side: BorderSide(color: Colors.teal),
                  ),
                  padding: const EdgeInsets.all(12)),
              onPressed: () => _openUrl('Linkedin'),
              child: SvgPicture.asset(
                'assets/icons/linkedin.svg',
                color: Colors.teal,
                semanticsLabel: 'Linkedin',
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget projectDesktop(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Olá, 👋',
                style: TextStyle(
                  fontSize: 28,
                )),
            const SizedBox(height: 20),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Eu sou',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  TextSpan(
                    text: ' José Alves',
                    style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Desenvolvedor Mobile',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: const CircleBorder(
                        side: BorderSide(color: Colors.teal),
                      ),
                      padding: const EdgeInsets.all(12)),
                  onPressed: () => _openUrl('WhatsApp'),
                  child: SvgPicture.asset(
                    'assets/icons/whatsapp.svg',
                    color: Colors.teal,
                    semanticsLabel: 'WhatsApp',
                  ),
                ),
                // const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: const CircleBorder(
                        side: BorderSide(color: Colors.teal),
                      ),
                      padding: const EdgeInsets.all(12)),
                  onPressed: () => _openUrl('GitHub'),
                  child: SvgPicture.asset(
                    'assets/icons/github.svg',
                    color: Colors.teal,
                    semanticsLabel: 'GitHub',
                  ),
                ),
                // const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: const CircleBorder(
                        side: BorderSide(color: Colors.teal),
                      ),
                      padding: const EdgeInsets.all(12)),
                  onPressed: () => _openUrl('Linkedin'),
                  child: SvgPicture.asset(
                    'assets/icons/linkedin.svg',
                    color: Colors.teal,
                    semanticsLabel: 'Linkedin',
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(width: 150),
        Container(
          height: 250,
          width: 250,
          decoration: const BoxDecoration(
              color: Colors.teal,
              image: DecorationImage(
                  image: AssetImage('../assets/images/perfil.png'),
                  fit: BoxFit.contain),
              shape: BoxShape.circle),
        ),
      ],
    );
  }
}
