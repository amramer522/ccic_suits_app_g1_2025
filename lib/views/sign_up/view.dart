import 'package:flutter/material.dart';

import '../verify_otp/view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Enter your name',
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Enter your password',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                Text.rich(TextSpan(
                    children: [
                      TextSpan(text: 'I agree to the medidoc'),
                      TextSpan(
                        text: ' Terms of Service',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      TextSpan(text: '\nand '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )))
              ],
            ),
            SizedBox(height: 22),
            FilledButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyOTPView(),));
              },
              child: Text("Sign UP"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("have an account?"),
                TextButton(onPressed: () {}, child: Text('Login')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
