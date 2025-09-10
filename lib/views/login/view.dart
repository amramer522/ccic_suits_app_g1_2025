import 'package:flutter/material.dart';
import 'package:pro1/views/sign_up/view.dart';

import 'widgets/social_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Hi Welcome back, you’ve been missed',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 39),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Image.asset('assets/icons/email.png'),
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Image.asset('assets/icons/password.png'),
                hintText: 'Enter your password',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/icons/hide.png'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                onPressed: () {},
                child: const Text('Forgot Password?'),
              ),
            ),
            const SizedBox(height: 22),
            FilledButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don’t have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignUpView(),
                        ),
                      );
                    },
                    child: const Text('Sign Up')),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Expanded(child: Divider()),
                SizedBox(
                  width: 8,
                ),
                Text("OR"),
                SizedBox(
                  width: 8,
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 34),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xffFFFFFF),
                side: const BorderSide(
                  color: Color(0xffE5E7EB),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Image.asset('assets/images/google.png'),
                    const SizedBox(
                      width: 52,
                    ),
                    const Text(
                      'Sign in with google',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            SocialButton(
              icon: 'apple',
              text: 'Apple',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xffFFFFFF),
                side: const BorderSide(
                  color: Color(0xffE5E7EB),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Image.asset('assets/images/facebook.png'),
                    const SizedBox(
                      width: 52,
                    ),
                    const Text(
                      'Sign in with Facebook',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
