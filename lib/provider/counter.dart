import 'package:flutter/cupertino.dart';

class Counnt with ChangeNotifier {
  int sum = 1 ;
  void add (){
    sum++;
    notifyListeners();
  }
  void min(){
    sum--;
    notifyListeners();
  }


}