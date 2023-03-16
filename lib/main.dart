import 'package:flutter/material.dart';
import 'package:mailc/pages/hidden_drawer.dart';
import 'package:url_launcher/url_launcher.dart';
final Uri url = Uri.parse('https://flutter.dev');


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blueGrey,
      ),
      // home: const MyHomePage(title: 'RigSat TimeSheets'),
      home: HiddenDrawer(),
    );
  }
}

