import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final images = [
    'https://cdn.pixabay.com/photo/2020/09/26/07/05/sea-5603351__340.jpg',
    'https://cdn.pixabay.com/photo/2022/02/22/17/25/stork-7029266__340.jpg',
    'https://cdn.pixabay.com/photo/2022/01/24/17/11/butterfly-6964083__340.jpg',
    'https://cdn.pixabay.com/photo/2019/03/18/04/53/bird-4062359__340.jpg',
    'https://cdn.pixabay.com/photo/2018/08/19/10/38/sunflower-3616249__340.jpg',
    'https://cdn.pixabay.com/photo/2022/02/14/20/09/bird-7013754__340.jpg',
    'https://cdn.pixabay.com/photo/2022/02/22/03/22/passiflora-7027917__340.jpg',
    'https://cdn.pixabay.com/photo/2022/02/17/07/51/church-7018154__340.jpg',
    'https://cdn.pixabay.com/photo/2022/01/16/19/01/candle-6942931__340.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Wallpaper'),
          ),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200, childAspectRatio: 1 / 2),
            itemCount: images.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: GridTile(
                  child: Image.network(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                  footer: GridTileBar(
                    title: Text('Wallpaper'),
                    backgroundColor: Colors.black.withOpacity(.5),
                    leading: Icon(Icons.wallpaper),
                  ),
                ),
              ),
            ),
          )
          //   children: images
          //       .map(
          //         (e) => Padding(
          //           padding: EdgeInsets.all(10.0),
          //           child: ClipRRect(
          //             borderRadius: BorderRadius.circular(10.0),
          //             child: Image.network(e, fit: BoxFit.cover),
          //           ),
          //         ),
          //       )
          //       .toList(),
          //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //       maxCrossAxisExtent: 200,
          //       crossAxisSpacing: 10,
          //       mainAxisSpacing: 10,
          //       childAspectRatio: 1 / 2),
          // ),
          ),
    );
  }
}
