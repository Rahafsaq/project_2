import 'package:flutter/material.dart';
import 'package:project_2/components/welcome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Welcome(), debugShowCheckedModeBanner: false);
  }
}
