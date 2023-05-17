// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/styles/app_text_style.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/utils/app_methods.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../widgets/custom_Elevated_Button.dart';

class AboutTextWidget extends StatelessWidget {
 

  const AboutTextWidget({
    Key? key,
   
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.isDesktop(context) ? 500 : double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Sobre', style: context.textStyle.titleLarge),
          const SizedBox(height: 20),
          Text(
            'É um fato conhecido de todos que um leitor se distrairá com o conteúdo de texto legível de uma página quando estiver examinando sua diagramação.',
            style: context.textStyle.bodySmall
                .copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 20),
          Text(
            'Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens',
            style: context.textStyle.bodySmall
                .copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              CustomElevatedButton(
                label: 'linkedIn',
                width: 150,
                onPressed: () => openUrl(linkedinUrl),
                icon: SvgPicture.asset(
                  linkedinIcon,
                  color: Colors.white,
                  height: 15,
                  width: 15,
                ),
              ),
              const SizedBox(width: 20),
              CustomElevatedButton(
                label: 'Curriculum',
                width: 150,
                onPressed: () => openUrl(curriculumUrl),
                icon: const Icon(Icons.cloud_download, size: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
