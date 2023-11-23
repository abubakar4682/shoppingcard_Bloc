import 'package:cardwith_bloc/home/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'card.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen:(previous,current)=> current is HomeActionState,
      buildWhen:(previous,current)=> current is !HomeState,
      listener: (context, state) {
        if(state is HomeNavigateToCardListPageActionSate){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Cards()));
          //Navigator.pop(context);
        }
        else if(state is HomeNavigateToCardListPageActionSate){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Cards()));
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeWishListButtonNavigationClickedEvent());
                  },
                  icon: Icon(Icons.favorite_border)),
              IconButton(onPressed: () {
                homeBloc.add(HomeProductCardListButtonEvent());

              }, icon: Icon(Icons.shopping_cart)),
            ],
            title: Text('App'),
          ),
        );
      },
    );
  }
}
