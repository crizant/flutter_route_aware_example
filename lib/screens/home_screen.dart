import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/chart-screen');
                },
                child: Text('Chart Screen'),
              ),
              const SizedBox(height: 10.0),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/settings-screen');
                },
                child: Text('Settings Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
