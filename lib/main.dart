import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_friend/todo/TodoCubit.dart';
import 'package:my_friend/todo/TodoRepository.dart';
import 'package:my_friend/todo/TodoView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => TodoCubit(TodoRepository()),
        child: TodoView(),
      ),
    );
  }
}
