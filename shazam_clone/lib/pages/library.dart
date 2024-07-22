import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shazam_clone/widgets/library_card_item.dart';
import 'package:shazam_clone/widgets/library_list_item.dart';

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const songs = [
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.settings),
        title: const Text(
          "라이브러리",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const LibraryListItem(
            iconImage: Icons.add,
            title: "Shazam",
          ),
          const Divider(),
          const LibraryListItem(
            iconImage: Icons.person,
            title: "아티스트",
          ),
          const Divider(),
          const LibraryListItem(
            iconImage: Icons.music_note,
            title: "회원님을 위한 재생 목록",
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "최근 Shazam",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: songs.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.5,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  var song = songs[index];
                  return LibraryCardItem(imgUrl: song);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
