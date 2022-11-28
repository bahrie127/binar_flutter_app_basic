import 'package:flutter/material.dart';
import 'package:flutter_app_basic/ch4topic2/basic_form/dialog_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_form/form_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_layout/aspectratio_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_layout/center_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_layout/column_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_layout/expanded_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_layout/gridview_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_layout/listview_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_layout/padding_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_layout/row_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_layout/sizedbox_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_layout/stack_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_layout/wrap_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_widget/button_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_widget/circle_avatar_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_widget/container_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_widget/icon_widget.dart';
import 'package:flutter_app_basic/ch4topic2/basic_widget/text_widget.dart';
import 'package:flutter_app_basic/ch4topic2/navigation/bottom_navbar.dart';
import 'package:flutter_app_basic/ch4topic2/navigation/drawer_widget.dart';
import 'package:flutter_app_basic/ch4topic2/navigation/navigation_push.dart';
import 'package:flutter_app_basic/ch4topic2/navigation/tabbar_widget.dart';

import 'ch4topic2/navigation/sliver_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormWidget(),
    );
  }
}
