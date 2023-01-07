import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Provider/favourite_provider.dart';

class Favourites extends StatefulWidget {
  Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    FavouriteProvider favouriteProvider = FavouriteProvider();
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourites"),
        centerTitle: true,
      ),

      body: Consumer<FavouriteProvider>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.favourites.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Item "+index.toString()),
                trailing: IconButton(
                  onPressed: () => value.removeFromFavourites(index),
                  icon: Icon(Icons.favorite),
                ),
              );
                
            },
          );
        },
      )
    );
  }
}
