import 'package:flutter/material.dart';
import 'widgets/presentation_picture_widget.dart';
import 'widgets/presentation_widget.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});
  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          PresentationWidget(),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.bottomCenter,
            child: PresentationPictureWidget(),
          ),
        ],
      ),
    );
  }
}
