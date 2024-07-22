import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryListItem extends StatelessWidget {
  const LibraryListItem(
      {super.key, required this.iconImage, required this.title});

  final IconData iconImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Icon(iconImage),
        const SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(),
      ],
    );
  }
}
