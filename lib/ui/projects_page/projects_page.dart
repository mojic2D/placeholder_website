import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/projects_page/projects_list.dart';
import 'package:placeholder_website/ui/projects_page/projects_view.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProjectsList(horizontal: false),
                ProjectsView(),
              ],
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          child: Column(
            children: [
              ProjectsList(horizontal: true),
              ProjectsView(),
            ],
          ),
        );
      },
    );
  }
}
