import 'package:flutter/material.dart';

class Responsive {
  bool isDesktop(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width >= 1024;
    return isDesktop;
  }
  bool isTable(BuildContext context) {
    bool isTable= MediaQuery.of(context).size.width < 1024 && MediaQuery.of(context).size.width >= 700;
    return isTable;
  }
  bool isMobileLarge(BuildContext context) {
    bool isMobile= MediaQuery.of(context).size.width < 700 && MediaQuery.of(context).size.width >= 500;
    return isMobile;
  }
  bool isMobile(BuildContext context) {
    bool isMobile= MediaQuery.of(context).size.width < 500;
    return isMobile;
  }

}
//<= 500 <=700 < 1024 >=1024