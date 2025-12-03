import 'package:flutter/material.dart';
import 'package:pro1/core/logic/helper_methods.dart';
import 'package:pro1/views/login/view.dart';

class AnimatedSplash extends StatefulWidget {
  const AnimatedSplash({super.key});

  @override
  State<AnimatedSplash> createState() => _AnimatedSplashState();
}

class _AnimatedSplashState extends State<AnimatedSplash> {
  bool isCenter = false;
  bool isCircleScale = false;

  @override
  Widget build(BuildContext context) {
    final centerX = MediaQuery.of(context).size.width / 2;
    final centerY = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            left: centerX - 50,
            top: isCenter ? centerY - 50 : 0,
            curve: Curves.easeOutQuint,
            duration: const Duration(seconds: 2),
            child: AnimatedScale(
              scale: isCircleScale ? MediaQuery.of(context).size.height/100*1.1 : 1,
              onEnd: () {
                goTo(LoginView(),canPop: false);
              },
              duration: const Duration(seconds: 2),
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  // border: isCircleScale ? null : Border.all(color: Colors.red, width: 40),
                ),
                child: isCircleScale
                    ? null
                    : const Center(
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white,
                        ),
                      ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 3),
            top: centerY - 10,
            left: centerX - 10 - (isCenter ? 0 : 100),
            curve: Curves.easeOutQuint,
            child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(32),
        child: FilledButton(
          onPressed: () {
            isCenter = !isCenter;
            Future.delayed(
              Duration(milliseconds: 520),
              () {
                isCircleScale = !isCircleScale;
                setState(() {});
              },
            );
            setState(() {});
          },
          child: const Text(
            "Start",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
