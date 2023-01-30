import 'package:flutter/material.dart';
import 'package:portfolio/components/my_project.dart';
import 'package:portfolio/components/side_menu.dart';
import 'package:portfolio/utils/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Responsive().isDesktop(context)
          ? null
          : AppBar(
              elevation: 0,
              //backgroundColor: Colors.transparent,
              leading: Builder(
                builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu),
                  );
                },
              ),
              centerTitle: true,
              title: Text(
                "My Projects",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
            color: ThemeData.dark().backgroundColor,
            constraints: const BoxConstraints(minWidth: 500, maxWidth: 1440),
            child: Responsive().isDesktop(context)
                ? Row(
                    children: const [
                      Expanded(
                        flex: 2,
                        child: SideMenu(),
                      ),
                      Expanded(
                        flex: 7,
                        child: MyProjects(),
                      ),
                    ],
                  )
                : const MyProjects()),
      ),
    );
  }
}
