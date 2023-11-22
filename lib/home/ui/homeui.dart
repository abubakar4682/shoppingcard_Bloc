import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'flutter_bloc/flutter_bloc.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SubjectBloc, SubjectState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('App'),
          ),
        );
      },
    );
  }
}
