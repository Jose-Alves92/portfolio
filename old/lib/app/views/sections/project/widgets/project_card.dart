// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/styles/app_text_style.dart';

import '../../../../models/project_model.dart';
import '../../../../widgets/custom_Elevated_Button.dart';
import '../project_details.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  List<String> listIconProjects = [
    'assets/icons/google-play-badge.png',
    'assets/icons/website.png',
    'assets/icons/github.png',
  ];

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return SizedBox(
      width: isMobile ? 350 : 500,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(project.title!,
                  style: context.textStyle.titleMedium
                      .copyWith(fontSize: isMobile ? 18 : 22)),
              const SizedBox(height: 20),
              Text(
                project.description!,
                style: context.textStyle.bodySmall.copyWith(
                    
                    fontSize: isMobile ? 15 : 18),
                // textAlign: TextAlign.justify,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                label: 'More',
                width: 140,
                onPressed: () {
                  if (isMobile) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProjectDetails(project: project),
                      ),
                    );
                  } else {
                    showDetails(context, ProjectDetails(project: project));
                  }
                },
                icon: const Icon(Icons.link, size: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showDetails(BuildContext context, Widget content) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(content: SizedBox(width: 700, child: content));
      },
    );
  }
}
