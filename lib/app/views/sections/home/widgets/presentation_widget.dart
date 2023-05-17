import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/styles/app_text_style.dart';

import '../../../../../core/utils/app_methods.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../widgets/custom_Elevated_Button.dart';

class PresentationWidget extends StatelessWidget {
  const PresentationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'Olá, eu sou',
            style: context.textStyle.bodySmall,
          ),
          Text(
            'José Alves',
            style: context.textStyle.titleLarge,
          ),
          Text(
            'Flutter Developer',
            style: context.textStyle.titleMedium
          ),
          const SizedBox(height: 20),
          CustomElevatedButton(
            label: 'WhatsApp',
            onPressed: () => openUrl(whatsAppUrl),
            icon: SvgPicture.asset(whatsAppIcon, color: Colors.white, height: 15, width: 15),
          ),
      ],
    );
  }
}