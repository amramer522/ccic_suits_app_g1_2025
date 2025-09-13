import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pro1/core/logic/helper_methods.dart';
import 'package:pro1/views/on_boarding/view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: ElasticInDown(
          duration: const Duration(seconds: 2),
          onFinish: (direction) => goTo(const OnBoardingView(),canPop: false),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 100,
                width: 100,
              ),
              const SizedBox(width: 12),
              const Text(
                "Suits",
                style: TextStyle(
                  fontSize: 128,
                  color: Colors.white,
                  fontFamily: "Waterfall",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
