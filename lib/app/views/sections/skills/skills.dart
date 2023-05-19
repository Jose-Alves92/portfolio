import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/styles/app_text_style.dart';
import 'package:portfolio/core/utils/constants.dart';
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
                  SkillsCardWidget(image: flutterImage),
                  SkillsCardWidget(image: dartImage),
                  SkillsCardWidget(image: gitHubImage),
                  SkillsCardWidget(image: javascriptImage),
                  SkillsCardWidget(image: htmlImage),
                  SkillsCardWidget(image: cssImage),
                  SkillsCardWidget(image: firebaseImage)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}