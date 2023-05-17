import 'package:flutter/material.dart';
import 'package:portfolio/app/views/home_page.dart';

import '../core/themes/app_Theme.dart';
import 'views/sections/project/project_details.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'José Alves',
      theme: AppTheme.instance!.themeLight,
      home: const HomePage(),
    );
  }
}
// theme.copyWith(
//         textTheme: const TextTheme(
//           displayLarge: TextStyle(
//               fontFamily: 'Pacifico', fontSize: 36, color: Colors.black),
//           titleLarge: TextStyle(
//               fontFamily: 'OpenSans',
//               fontSize: 36,
//               color: Colors.black,
//               fontWeight: FontWeight.w700),
//           titleMedium: TextStyle(
//               fontFamily: 'OpenSans', fontSize: 20, color: Colors.black),
//           titleSmall: TextStyle(
//               fontFamily: 'OpenSans',
//               fontSize: 18,
//               color: Colors.black,
//               fontWeight: FontWeight.w300),
//           bodyMedium: TextStyle(
//               fontFamily: 'Montserrat', fontSize: 20, color: Colors.black),
//           bodySmall: TextStyle(
//               fontFamily: 'Montserrat',
//               fontSize: 18,
//               color: Colors.black,
//               fontWeight: FontWeight.w300),
//         ),
//         colorScheme: theme.colorScheme.copyWith(
//           background: Colors.white,
//           secondary: const Color(0xFF5D63CD),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: theme.colorScheme.secondary,
//             foregroundColor: Colors.white,
//             padding: const EdgeInsets.all(10.0),
//             textStyle: theme.textTheme.bodySmall!.copyWith(fontSize: 15),
//           ),
//         ),
//       ),