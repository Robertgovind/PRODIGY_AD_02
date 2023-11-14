import 'package:flutter/material.dart';
import 'package:prodigy_ad_02/models/task_data.dart';
import 'package:prodigy_ad_02/pages/todo_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return TaskData();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "ToDo app",
        home: const TodoPage(),
        theme: ThemeData(brightness: Brightness.light),
      ),
    );
  }
}
