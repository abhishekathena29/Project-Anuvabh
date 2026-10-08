import 'package:flutter/foundation.dart';

import '../../data/models/app_tab.dart';

class BottomNavProvider extends ChangeNotifier {
  AppTab _current = AppTab.home;
  AppTab get current => _current;

  void select(AppTab tab) {
    if (tab == _current) return;
    _current = tab;
    notifyListeners();
  }
}
