import 'package:flutter/material.dart';
import 'package:flutter_app_basic/ch4topic2/basic_widget/container_widget.dart';

import 'ch4topic2/navigation/sliver_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContainerWidget(),
    );
  }
}
