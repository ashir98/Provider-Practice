import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Favourite List"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Favourites(),
              )),
              icon: Icon(Icons.favorite),
            )
          ],
        ),
        body: Consumer<FavouriteProvider>(
          builder:(context, value, child) {
            return ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Item " + index.toString()),
                  trailing: IconButton(
                    onPressed: () => value.addToFavourites(index),
                    icon: Icon(Icons.favorite_rounded),
                  ),
                );
              },
            );
          },
        )
      ),
    );
  }
}
