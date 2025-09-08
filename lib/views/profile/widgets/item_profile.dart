import 'package:flutter/material.dart';

class ItemProfile extends StatelessWidget {
  final String title, icon;
  final VoidCallback onPressed;

  const ItemProfile({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextButton.icon(
        onPressed: onPressed,
        style: TextButton.styleFrom(backgroundColor: Color(0xffFFFFFF), padding: EdgeInsets.zero),
        label: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset('assets/icons/$icon'),
              SizedBox(width: 18),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
