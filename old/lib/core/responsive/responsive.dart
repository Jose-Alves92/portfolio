// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? table;
  final Widget? desktop;
  const Responsive({
    Key? key,
    this.mobile,
    this.table,
    this.desktop,
  }) : super(key: key);

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTable(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024 &&
        MediaQuery.of(context).size.width >= 600;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 500;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        if (size.maxWidth >= 2024) {
          return desktop!;
        } else if (size.maxWidth < 1024 && size.maxWidth >= 600) {
          return table!;
        } else {
          return mobile!;
        }
      },
    );
  }
}
