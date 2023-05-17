// ignore_for_file: public_member_api_docs, sort_constructors_first
class Project {
  final String? title, description;
  final bool isProjectMobile;
  final Map<String, String> urls;
  final List<String> images;

  Project({
    this.title,
    this.description,
    required this.isProjectMobile,
    required this.urls,
    required this.images,
  });
}
