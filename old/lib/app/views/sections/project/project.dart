// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/styles/app_text_style.dart';
import '../../../controllers/projects_controller.dart';
import 'widgets/project_card.dart';

class Projects extends StatelessWidget {
  Projects({
    super.key,
  });

  final projects = ProjectsController().listProjects;

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Padding(
      padding: EdgeInsets.only(top: isMobile ? 30 : 80, bottom: isMobile ? 30 : 80),
      child: SizedBox(
        width: double.infinity,//size.width - 160,
        child: Column(
          children: [
            Text('Projetos', style: context.textStyle.titleLarge),
            const SizedBox(height: 30.0),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              direction: Axis.horizontal,
              runSpacing: 50,
              spacing: 50,
              children: List.generate(
                projects.length,
                (index) => ProjectCard(
                   project: projects[index],
                   ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
