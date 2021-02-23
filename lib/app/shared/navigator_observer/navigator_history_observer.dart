import 'package:flutter/material.dart';

class NavigatorHistoryObserver extends NavigatorObserver {
  NavigatorHistoryObserver();

  List<Route> get history => List.from(_history);

  final List<Route> _history = <Route<dynamic>>[];

  List<String> get historyWithNamedRoutes =>
      history.map((router) => router.settings.name).toList();

  @override
  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    _history.remove(route);
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    if (route != null) {
      _history.add(route);
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic> previousRoute) {
    _history.remove(route);
  }

  @override
  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) {
    final indexToReplace = _history.indexOf(oldRoute);
    _history[indexToReplace] = newRoute;
  }
}
