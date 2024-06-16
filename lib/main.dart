import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quote_app/Screens/them.dart';
import 'package:quote_app/utils/routes.dart';

void main() {
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
    ],
    builder: (context, child) => const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ThemeProvider>(context).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          // onSecondary: Colors.pink
        ),
      ),
      darkTheme: ThemeData.dark(),
      routes: AppRoutes.routes,
    );
  }
}
