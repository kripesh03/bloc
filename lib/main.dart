import 'package:flutter/material.dart';
import 'package:practice/app.dart';
import 'package:practice/service_locator/service_locator.dart';

void main() async {
  // Run hunu bhanda agadi chahine sab kura agadi initialized garne 
  WidgetsFlutterBinding.ensureInitialized();  
  await initDependencies();
  runApp(
    const App(),
  );
}
