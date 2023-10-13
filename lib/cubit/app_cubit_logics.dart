import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/app_cubit.dart';
import 'package:travelapp/cubit/app_cubit_states.dart';
import 'package:travelapp/pages/detail_page.dart';
import 'package:travelapp/pages/home_page.dart';
import 'package:travelapp/pages/window_page.dart';


class AppCubitLogics  extends StatefulWidget {
  const AppCubitLogics ({super.key});

  @override
  _AppCubitLogicsState createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context,state){
          if(state is WelcomeState)
            {
              return WelcomePage();
            }if(state is DetailState) {
            return DetailPage();
          }if(state is LoadedState)
          {
            return HomePage();
          }if(state is LoadingState)
          {
            return Center(child: CircularProgressIndicator(),);
          }else{
            return Container();
          }
        },
      ),
    );
  }
}
