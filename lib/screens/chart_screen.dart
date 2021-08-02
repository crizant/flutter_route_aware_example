import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../route_aware_state.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends RouteAwareState<ChartScreen> {
  @override
  void onEnterScreen() async {
    print('on enter chart screen');
    // set orientation to landscape
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void onLeaveScreen() async {
    print('on leave chart screen');
    // set orientation back to portrait
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/settings-screen');
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Text('Chart Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
