import 'package:flutter/material.dart';
import 'package:placeholder_website/bloc/main_bloc.dart';
import 'package:placeholder_website/model/projects_model.dart';
import 'package:placeholder_website/ui/navbar.dart';
import 'package:placeholder_website/ui/projects_page/projects_page.dart';
import 'package:provider/provider.dart';

class HomePageNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ]),
        ),
        child: Provider<MainBloc>(
          create: (_)=>MainBloc(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Navbar(),
                ChangeNotifierProvider<ProjectsModel>(
                  create: (context)=>Provider.of<MainBloc>(context,listen: false).model,
                  child: ProjectsPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
