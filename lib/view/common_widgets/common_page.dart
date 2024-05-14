import 'package:flutter/material.dart';

class CommonPage extends StatelessWidget {
  final String pageName;
  const CommonPage({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(pageName)),
    );
  }
}
