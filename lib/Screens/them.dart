import 'package:flutter/widgets.dart';

class ThemeProvider extends ChangeNotifier{
  bool isDark=false;

  void Changetheme(bool value){
    isDark=value;
    notifyListeners();
  }
}