import 'package:flutter/material.dart';

class AssetsPage extends StatefulWidget {
  const AssetsPage({Key? key}) : super(key: key);

  @override
  State<AssetsPage> createState() => _AssetsPageState();
}

class _AssetsPageState extends State<AssetsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    backgroundColor: Color.fromARGB(210, 138, 126, 126),
    );
  }
}
