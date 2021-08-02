import 'package:flutter/material.dart';
import 'package:flutter_route_aware_example/screens/chart_screen.dart';
import 'package:flutter_route_aware_example/screens/home_screen.dart';
import 'package:flutter_route_aware_example/screens/settings_screen.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (_) => HomeScreen(),
  '/chart-screen': (_) => ChartScreen(),
  '/settings-screen': (_) => SettingsScreen(),
};
