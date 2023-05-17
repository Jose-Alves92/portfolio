import 'package:flutter/material.dart';
import 'package:portfolio/core/styles/app_colors.dart';

class PresentationPictureWidget extends StatelessWidget {
  const PresentationPictureWidget({Key? key}) : super(key: key);

  double _getSize(double value){
    if(value >= 300 && value <= 400) {
      return value;
    } else if(value <= 300) {
      return 300;
    } else {
      return 400;
    }
    
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: _getSize(size.width * .4),
      width: _getSize(size.width * .4),
      decoration: BoxDecoration(
        // color: Colors.teal,
        image: const DecorationImage(
            image: AssetImage('assets/images/perfil.png'), fit: BoxFit.contain),
        shape: BoxShape.circle,
        border: Border.fromBorderSide(BorderSide(
            color: context.colors.primary, width: 5)),
      ),
    );
  }
}
