import 'package:flutter/material.dart';
import 'package:pro1/views/sign_up/view.dart';

import 'widgets/social_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hi Welcome back, you’ve been missed',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 39),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Image.asset('assets/icons/email.png'),
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 16),
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
            SizedBox(height: 10),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                onPressed: () {},
                child: Text('Forgot Password?'),
              ),
            ),
            SizedBox(height: 22),
            FilledButton(
              onPressed: () {},
              child: Text("Login"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SignUpView(),
                        ),
                      );
                    },
                    child: Text('Sign Up')),
              ],
            ),
            SizedBox(height: 16),
            Row(
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
            SizedBox(height: 34),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Color(0xffFFFFFF),
                side: BorderSide(
                  color: Color(0xffE5E7EB),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Image.asset('assets/images/google.png'),
                    SizedBox(
                      width: 52,
                    ),
                    Text(
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
            SizedBox(height: 16),
            SocialButton(
              icon: 'apple',
              text: 'Apple',
              onPressed: () {},
            ),
            SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Color(0xffFFFFFF),
                side: BorderSide(
                  color: Color(0xffE5E7EB),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Image.asset('assets/images/facebook.png'),
                    SizedBox(
                      width: 52,
                    ),
                    Text(
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
