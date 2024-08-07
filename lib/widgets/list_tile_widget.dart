import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.text,
    required this.borderRadius,
    required this.imageName, required this.color,
  });

  final String text;
  final double borderRadius;
  final String imageName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: color,
      onTap: () {},
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Colors.green,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Transform.scale(
            scale: 1.2,
            child: Image.asset(
              imageName,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
