import 'package:flutter/material.dart';
import 'package:session3/src/AppRoot.dart';

import '../services/sharedpreference_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefrenceHelper.init();
  runApp(AppRoot());
}

