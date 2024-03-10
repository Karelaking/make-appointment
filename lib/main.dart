import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/themes/themes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.̥
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Make Appointments',
      themeMode: ThemeMode.system,
      theme: AppThemeConstant().light,
      darkTheme: AppThemeConstant().dark,
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
