import 'package:flutter/material.dart';

class SectionSkill extends StatelessWidget {
  final double height;
  const SectionSkill({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Skills', style: TextStyle(fontSize: 28),),
          const SizedBox(height: 20),
          Container(
            height: height <= 600 ? height * 0.50 : height * 0.7,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black87),
            padding: const EdgeInsets.all(20),
            child: LayoutBuilder(
              builder: (_, boxConstraints) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    
                    children: [
                      Expanded(child: SkillsAnimation(label: 'Dart', percentage: 0.80, sizeCircle: boxConstraints.maxWidth,)),
                      Expanded(child: SkillsAnimation(label: 'Flutter', percentage: 0.70, sizeCircle: boxConstraints.maxWidth,)),
                      Expanded(child: SkillsAnimation(label: 'Firebase', percentage: 0.60, sizeCircle: boxConstraints.maxWidth,)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                   
                    children: [
                      Expanded(child: SkillsAnimation(label: 'HTML5', percentage: 0.50, sizeCircle: boxConstraints.maxWidth,)),
                      Expanded(child: SkillsAnimation(label: 'CSS3', percentage: 0.30, sizeCircle: boxConstraints.maxWidth,)),
                      Expanded(child: SkillsAnimation(label: 'Git/GitHub', percentage: 0.60, sizeCircle: boxConstraints.maxWidth,)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsAnimation extends StatelessWidget {
  final double sizeCircle;
  final String label;
  final double percentage;
  const SkillsAnimation({
    Key? key,
    required this.label,
    required this.percentage, required this.sizeCircle, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
        height: sizeCircle <= 600 ? sizeCircle * 0.18 : sizeCircle * 0.12,
        width:  sizeCircle <= 600 ? sizeCircle * 0.18 : sizeCircle * 0.12,
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: percentage),
          duration: const Duration(seconds: 2),
          builder: (context, value, child) => Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.grey,
                color: Colors.teal,
                strokeWidth: 8,
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
          style: ThemeData.dark().textTheme.titleSmall,
        ),
          // width: 70,
          // height: 70,
        
      ],
    );
  }
}
