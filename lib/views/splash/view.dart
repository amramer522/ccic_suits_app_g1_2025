import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 100,
              width: 100,
            ),
            SizedBox(width: 12),
            Text(
              "Suits",
              style: TextStyle(fontSize: 128, color: Colors.white, fontFamily: "Waterfall"),
            )
          ],
        ),
      ),
    );
  }
}
