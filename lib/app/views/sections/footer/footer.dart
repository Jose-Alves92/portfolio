import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: SvgPicture.asset(
              whatsAppIcon,
              //height: 15,
              //width: 15,
            ),
          ),
          const SizedBox(width: 5),
          TextButton(
            onPressed: () {},
            child: SvgPicture.asset(
              linkedinIcon,
              //height: 15,
              //width: 15,
            ),
          ),
          const SizedBox(width: 5),
          TextButton(
            onPressed: () {},
            child: SvgPicture.asset(
              githubIcon,
              color: Colors.black,
              //height: 15,
              //width: 15,
            ),
          ),
          const SizedBox(width: 5),
          TextButton(
            onPressed: () {},
            child: const Icon(Icons.email, color: Colors.black)
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
