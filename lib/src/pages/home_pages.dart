import 'package:flutter/material.dart';

import 'contador.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPages(),
      ),
    );
  }
}
