import 'package:e_commerce/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';

import 'injection.dart';

void main() {
  configureDependencies();
  runApp(AppWidget());
}
