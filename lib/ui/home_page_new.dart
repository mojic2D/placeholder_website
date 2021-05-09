import 'package:flutter/material.dart';
import 'package:placeholder_website/bloc/main_bloc.dart';
import 'package:placeholder_website/model/projects_model.dart';
import 'package:placeholder_website/ui/contact_page.dart';
import 'package:placeholder_website/ui/navbar.dart';
import 'package:placeholder_website/ui/projects_page/projects_page.dart';
import 'package:provider/provider.dart';

class HomePageNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Provider<MainBloc>(
        create: (_) => MainBloc(),
        child: ChangeNotifierProvider<ProjectsModel>(
          create: (context) =>
              Provider.of<MainBloc>(context, listen: false).model,
          child:
              Consumer<ProjectsModel>(builder: (context, projectsModel, child) {
            return Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                  colors: projectsModel.colorSchemes,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Navbar(),
                    _buildView(projectsModel),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  _buildView(ProjectsModel model) {
    if (model.currentView == 'PROJECTS') {
      return ProjectsPage();
    }
    if (model.currentView == 'CONTACT') {
      return ContactPage();
    }
    return ProjectsPage();
  }
}
