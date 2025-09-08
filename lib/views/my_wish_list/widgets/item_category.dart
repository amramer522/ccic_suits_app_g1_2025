import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const ItemCategory({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : null,
          ),
        ),
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
