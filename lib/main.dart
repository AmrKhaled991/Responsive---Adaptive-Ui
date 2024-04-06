import 'package:flutter/material.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/drowerwidget/Responsive_UI.dart';

void main() {
  runApp(
    const MyApp(), // Wrap your app
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Responsive_UI(),
    );
  }
}
// ignore_for_file: public_member_api_docs, sort_constructors_first

