import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hausreparatur_init.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const HausReparatur());
}
