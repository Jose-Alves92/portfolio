import 'package:flutter/material.dart';
import 'package:portfolio/components/projects_grid_view.dart';
import 'package:portfolio/utils/responsive.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  Widget? _projectsGridView(context) {
    if (Responsive().isDesktop(context)) {
      return const ProjectsGridView();
    } else if (Responsive().isTable(context)) {
      return const ProjectsGridView(crossAxisCount: 2, childAspectRatio: 2);
    } else if (Responsive().isMobile(context)) {
      return const ProjectsGridView(crossAxisCount: 1, childAspectRatio: 3);
    } else {
      return const ProjectsGridView(crossAxisCount: 1, childAspectRatio: 3);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Responsive().isDesktop(context)
              ? Text(
                  "My Projects",
                  style: Theme.of(context).textTheme.headline6,
                )
              : Container(),
          const SizedBox(height: 20),
          _projectsGridView(context)!,
        ],
      ),
    );
  }
}
