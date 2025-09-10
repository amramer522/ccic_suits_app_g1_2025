import 'package:flutter/material.dart';
import 'package:pro1/core/logic/helper_methods.dart';
import 'package:pro1/views/login/view.dart';

part 'model.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentView = 0;

  void goToNextPage() => goTo(const LoginView());

  @override
  Widget build(BuildContext context) {
    final item = _list[currentView];
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/${item.image}",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (currentView != 2)
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: OutlinedButton(
                        onPressed: goToNextPage,
                        child: const Text(
                          "Skip",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  const Spacer(),
                  Text(
                    item.title,
                    style: const TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 18),
                  if (item.description != null)
                    Text(
                      item.description!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      if (currentView != 0)
                        FloatingActionButton(
                          onPressed: () {
                            currentView--;
                            setState(() {});
                          },
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: const CircleBorder(side: BorderSide()),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.only(start: 8),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      const Spacer(),
                      ...List.generate(
                        3,
                        (index) => Padding(
                          padding: EdgeInsetsDirectional.only(
                            end: index != 2 ? 12 : 0,
                          ),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: index == currentView ? null : const Color(0xffD9D9D9),
                          ),
                        ),
                      ),
                      const Spacer(),
                      FloatingActionButton(
                        onPressed: () {
                          if (currentView == 2) {
                            goToNextPage();
                          } else {
                            currentView++;
                            setState(() {});
                          }
                        },
                        shape: const CircleBorder(),
                        child: const Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
