import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider_practice/Provider/favourite_provider.dart';
import 'package:provider_practice/Screens/Favourites/favourites_list.dart';

class FavouriteList extends StatefulWidget {
  const FavouriteList({super.key});

  @override
  State<FavouriteList> createState() => _FavouriteListState();
}

class _FavouriteListState extends State<FavouriteList> {
  List fav=[];
  @override
  Widget build(BuildContext context) {
    FavouriteProvider favouriteProvider = FavouriteProvider();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Favourite List"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Favourites(fav: fav,),
              )),
              icon: Icon(Icons.favorite),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Item " + index.toString()),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    fav.add(index);
                  });
                },
                icon: Icon(Icons.favorite_rounded),
              ),
            );
          },
        ),
      ),
    );
  }
}
