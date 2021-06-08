// @dart=2.9
import 'package:flutter/material.dart';

import './core/di/injectable.dart' as di;

import 'App.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}
