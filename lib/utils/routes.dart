import 'package:flutter/material.dart';
import 'package:quote_app/Screens/HomePage.dart';
import 'package:quote_app/Screens/LikeScreen.dart';
import 'package:quote_app/Screens/SplashScreen..dart';
import 'package:quote_app/Screens/category.da.dart';
import 'package:quote_app/Screens/quotes.dart';
import 'package:quote_app/Screens/thought.dart';
import 'package:quote_app/Screens/thought2.dart';
import 'package:quote_app/Screens/thought3..dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => HomePage(),
    '/': (context) => SplashScreen(),
    '/cat': (context) => CategoryScreen(),
    '/qt': (context) => QuotesScreen(),
    '/th': (context) => ThoughtScreen(),
    '/th2': (context) => ThoughtScreen23(),
    '/th3': (context) => ThoughtScreen3(),
    '/like': (context) => LikeScreen(),
  };
}
