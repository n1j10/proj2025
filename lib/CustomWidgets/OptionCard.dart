import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;
  OptionCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
    this.isSelected = false, required Color backgroundColor,                       ///final ImageIcon imageIcon;                                                                required Color backgroundColor,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90,width: 400,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),

          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey,
            width: 1,
          ),
        ),



        child: Row(
          children: [
            Icon(icon, size: 30, color: Colors.black),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,

                ),
                SizedBox(height: 4),
                Text(
                  description,

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}