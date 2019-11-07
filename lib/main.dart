import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'Navigation',
        home: MainScreen(),
      ),
    );

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Main Screen(画像をタップ)'),
        ),
        body: GestureDetector(
          onTap: () {
            print("MainScreen tapped");
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => DetailScreen()));
          },
          child: Hero(
            tag: "imagehero",
            child: Image.network("https://picsum.photos/250?image=9"),
          ),
        ),
      );
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: GestureDetector(
            onTap: () {
              print("DetailScreen tapped");
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(top: 200),
              child: Hero(
                tag: "imagehero",
                child: Image.network("https://picsum.photos/250?image=9"),
              ),
            )),
      );
}
