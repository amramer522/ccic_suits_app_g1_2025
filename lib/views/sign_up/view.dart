import 'package:flutter/material.dart';

import '../verify_otp/view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Enter your name',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email_outlined),
                hintText: 'Enter your password',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.visibility_off),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                Text.rich(TextSpan(
                    children: [
                      const TextSpan(text: 'I agree to the medidoc'),
                      TextSpan(
                        text: ' Terms of Service',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      const TextSpan(text: '\nand '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ],
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )))
              ],
            ),
            const SizedBox(height: 22),
            FilledButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyOTPView(),));
              },
              child: const Text("Sign UP"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("have an account?"),
                TextButton(onPressed: () {}, child: const Text('Login')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
