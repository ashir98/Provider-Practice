import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider_practice/Provider/favourite_provider.dart';

class Favourites extends StatefulWidget {

  List fav;
  Favourites({required this.fav,super.key});

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

      body: ListView.builder(
        itemCount:widget.fav.length,
        itemBuilder:(context, index) {
          return Expanded(
            child: ListTile(
              title: Text("Item "+ "${widget.fav[index]}"),
              trailing: IconButton(
                onPressed: () {
                  widget.fav.removeAt(index);
                  setState(() {
                    
                  });
                },
                icon: Icon(Icons.favorite),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            
          });
        },
      ),
    );
  }
}
