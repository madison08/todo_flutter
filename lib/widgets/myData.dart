import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Data extends ChangeNotifier {
  String data = 'my true data ok fff';

  void changeString(String newString) {
    data = newString;
    notifyListeners();
  }
}
