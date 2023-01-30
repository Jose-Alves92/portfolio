import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/perfil.png'),
                ),
                const Spacer(),
                Text(
                  'Olá, eu sou José Alves',
                  style: ThemeData.dark()
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.white),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Este é o meu Portfólio Pessoal, aqui você pode encontrar um pouco mais sobre mim e meu trabalho.',
                    style: ThemeData.dark().textTheme.bodySmall,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
                
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 20),
          const Text('Skills:'),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: SkillsAnimation(label: 'Dart', percentage: 0.8),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: SkillsAnimation(label: 'Flutter', percentage: 0.75),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: SkillsAnimation(label: 'Firebase', percentage: 0.75),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SkillsAnimation extends StatelessWidget {
  final String label;
  final double percentage;
  const SkillsAnimation({
    Key? key,
    required this.label,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: percentage),
            duration: const Duration(seconds: 2),
            builder: (context, value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                ),
                Center(
                  child: Text('${(value * 100).toInt()}%'),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: ThemeData.dark().textTheme.subtitle2,
        ),
      ],
    );
  }
}
