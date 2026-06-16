import 'package:assignment/app/app.dart';
import 'package:assignment/dependency_injection.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();
  

  runApp(const MyApp());
}
