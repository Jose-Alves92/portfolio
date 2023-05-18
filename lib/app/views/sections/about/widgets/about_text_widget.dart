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
            'Olá, Meu nome é José Alves, tenho 30 anos e vivo em Aparecida de Goiânia-Go, sou graduado em Ciências Contábeis, e trabalhei por mais de cinco anos com contabilidade, mas no momento estou em busca de oportunidade para atuar com Desenvolvedor Mobile Júnior.',
            style: context.textStyle.bodySmall
                .copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 20),
          Text(
            'E como muitos programadores gosto de tecnologia e sou fascinado em como ela pode nos ajudar e facilitar nossas vidas, vejo a programação como um combustível para expressar minha identidade criando tecnologias, ferramentas que podem ajudar outras pessoas.',
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
