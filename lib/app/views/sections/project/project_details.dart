// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio/core/styles/app_text_style.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../../core/utils/app_methods.dart';
import '../../../models/project_model.dart';

class ProjectDetails extends StatelessWidget {
  final Project project;
  ProjectDetails({
    Key? key,
    required this.project,
  }) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${project.title}',
                      style: context.textStyle.titleMedium),
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close)),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                project.description!,
                style: context.textStyle.bodySmall.copyWith(fontSize: 15),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  if (project.urls['github']!.isNotEmpty)
                    InkWell(
                      onTap: () => openUrl(project.urls['github']!),
                      child: Image.asset('assets/icons/github.png',
                          width: 50, height: 50),
                    ),
                  if (project.urls['website']!.isNotEmpty)
                    InkWell(
                      onTap: () => openUrl(project.urls['website']!),
                      child: Image.asset('assets/icons/website.png',
                          width: 50, height: 50),
                    ),
                  if (project.urls['google-play']!.isNotEmpty)
                    InkWell(
                      onTap: () => openUrl(project.urls['google-play']!),
                      child: Image.asset('assets/icons/google-play-badge.png',
                          width: 140),
                    ),
                  // if (project.urls.values.isNotEmpty) const SizedBox(),
                ],
              ),
              const SizedBox(height: 20),
              Text('Screenshot', style: context.textStyle.titleMedium),
              const SizedBox(height: 20),
              SizedBox(
                height: 400,
                child: project.images.isNotEmpty
                    ? RawScrollbar(
                        thumbVisibility: true,
                        controller: _scrollController,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          controller: _scrollController,
                          itemCount: project.images.length,
                          itemBuilder: (_, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: project.isProjectMobile ? 200 : 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(project.images[index],
                                      headers: {}),
                                  fit: BoxFit.cover,
                                  onError: (exception, stackTrace) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    : const Text('No data available'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
