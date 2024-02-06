import 'package:e_commerce/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print('ZZZZZZZZZZZZZZZZZZZZZZZZZError initializing Firebase: $e');
  }
  configureDependencies();
  runApp(AppWidget());
}
