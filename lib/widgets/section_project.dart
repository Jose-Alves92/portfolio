// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio/data/PROJECTS.dart';

class SectionProjects extends StatefulWidget {
  final double height;
  const SectionProjects({
    super.key,
    required this.height,
  });

  @override
  State<SectionProjects> createState() => _SectionProjectsState();
}

class _SectionProjectsState extends State<SectionProjects> {
  /*Widget? _projectsGridView(context) {
    if (Responsive().isDesktop(context)) {
      return const ProjectsGridView();
    } else if (Responsive().isTable(context)) {
      return const ProjectsGridView(crossAxisCount: 2, childAspectRatio: 2);
    } else if (Responsive().isMobile(context)) {
      return const ProjectsGridView(crossAxisCount: 1, childAspectRatio: 3);
    } else {
      return const ProjectsGridView(crossAxisCount: 1, childAspectRatio: 3);
    }
  }*/
  int _pageViewCurrent = 0;
  late PageController _pageController;

  bool _isCurrentPage(int index) {
    return _pageViewCurrent == index;
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.85);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      height: widget.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Text(
            '${projects[_pageViewCurrent].title}',
            style: const TextStyle(fontSize: 28),
          ),
         
          SizedBox(
            height: widget.height * 0.70,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _pageViewCurrent = value;
                });
              },
              itemCount: projects.length,
              itemBuilder: (context, index) => AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeOutQuint,
                margin: EdgeInsets.only(
                    top: _isCurrentPage(index) ? 26 : 70,
                    left: 15,
                    right: 15,
                    bottom: 26),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${projects[index].description}'),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              projects.length,
              (index) {
                return IconButton(
                  iconSize: 12,
                  icon: _pageViewCurrent == index
                      ? const Icon(
                          Icons.circle_rounded,
                          color: Colors.teal,
                        )
                      : const Icon(Icons.circle_outlined),
                  onPressed: () {
                    _pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeOutQuint);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
