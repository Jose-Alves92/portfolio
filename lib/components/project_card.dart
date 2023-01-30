import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  _launchUrl() async {
    var url = Uri.parse(project.urlGithub!);
    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: ThemeData.dark().colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: ThemeData.dark()
                .textTheme
                .headline1!
                .copyWith(color: Colors.white),
          ),
          const Spacer(),
          Text(
            project.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: ThemeData.dark().textTheme.bodySmall,
          ),
          const Spacer(),
          TextButton(
            onPressed: _launchUrl,
            child: const Text(
              "Projeto GitHub >>",
            ),
          ),
        ],
      ),
    );
  }
}
