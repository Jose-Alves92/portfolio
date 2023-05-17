import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/styles/app_text_style.dart';
import 'widgets/skills_card_widget.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Padding(
      padding: EdgeInsets.only(top: isMobile ? 30 : 80, bottom: isMobile ? 30 : 80),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          
          children: [
            Text('Skills', style: context.textStyle.titleLarge),
            const SizedBox(height: 20),
            SizedBox(
              width: isMobile ? 300 : 500,
              child: GridView(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isMobile ? 2 : 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                children: const [
                  SkillsCardWidget(path: 'assets/icons/flutter.png'),
                  SkillsCardWidget(path: 'assets/icons/dart.png'),
                  SkillsCardWidget(path: 'assets/icons/github.png'),
                  SkillsCardWidget(path: 'assets/icons/javascript.png'),
                  SkillsCardWidget(path: 'assets/icons/html.png'),
                  SkillsCardWidget(path: 'assets/icons/css.png'),
                  SkillsCardWidget(path: 'assets/icons/database.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               SkillsCardWidget(path: 'assets/icons/flutter.png'),
//               SizedBox(width: 20),
//               SkillsCardWidget(path: 'assets/icons/dart.png'),
//               SizedBox(width: 20),
//               SkillsCardWidget(path: 'assets/icons/github.png'),
//               SizedBox(width: 20),
//               SkillsCardWidget(path: 'assets/icons/api.png')
//             ],
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               SkillsCardWidget(path: 'assets/icons/javascript.png'),
//               SizedBox(width: 20),
//               SkillsCardWidget(path: 'assets/icons/html.png'),
//               SizedBox(width: 20),
//               SkillsCardWidget(path: 'assets/icons/css.png'),
//               SizedBox(width: 20),
//               SkillsCardWidget(path: 'assets/icons/database.png')
//             ],),