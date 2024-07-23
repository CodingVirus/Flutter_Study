import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryCardItem extends StatelessWidget {
  const LibraryCardItem({super.key, required this.imgUrl});

  final Map<String, String> imgUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
            imgUrl["imageUrl"].toString(),
          ),
          Text(imgUrl["title"].toString()),
          Text(imgUrl["artist"].toString()),
          Image.network("https://i.ibb.co/KG9m5QS/applemusic.png",),
        ],
      ),
    );
  }
}
