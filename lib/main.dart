import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // set orientation to portrait up
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // create an instance of `RouteObserver`
  final RouteObserver<PageRoute> _routeObserver = RouteObserver();

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      // provide the `RouteObserver` to subtree widgets through `context`
      value: _routeObserver,
      child: MaterialApp(
        title: 'Flutter Demo',
        // set route observer for the `Navigator`
        navigatorObservers: [_routeObserver],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: routes,
      ),
    );
  }
}
