import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayView extends StatelessWidget {
  const PlayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CircularProgressIndicator(),
            LinearProgressIndicator(),
            CupertinoActivityIndicator(),
            Switch(
              value: true,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  print('hello world');
                },
                child: Container(
                  height: 50,
                  // color: Colors.green,
                  child: Center(child: Column(
                    children: [
                      Icon(Icons.account_balance_rounded),
                      Text("Amr"),
                    ],
                  )),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 50,
                color: Colors.yellow,
                child: Center(child: Text("Ahmed")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
