import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/moudles/settings/settings.dart';
import 'package:to_do_list_app/moudles/tasks_List/tasks_list.dart';
import 'layouts/home_layout/home_layout.dart';
import 'models/pro_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: homeLayout.routeName,
        routes: {
          homeLayout.routeName: (context) => homeLayout(),
        },
        home: homeLayout());
  }
}
