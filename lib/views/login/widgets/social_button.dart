import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onPressed;

  const SocialButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
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
            Image.asset('assets/images/$icon.png'),
            SizedBox(
              width: 52,
            ),
            Text(
              'Sign in with $text',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),
            )
          ],
        ),
      ),
    );
  }
}
