import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryCardItem extends StatelessWidget {
  const LibraryCardItem({super.key, required this.imgUrl});

  final Map<String, String> imgUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(
        imgUrl["imageUrl"].toString(),
      ),
    );
  }
}
