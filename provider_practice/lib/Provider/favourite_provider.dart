import 'package:flutter/material.dart';

class FavouriteProvider with ChangeNotifier{

  List _favourites = [];
  get favourites => _favourites;

  void addToFavourites(int index){
    _favourites.add(index);
    notifyListeners();
  }

  void removeFromFavourites(int index){
    _favourites.removeAt(index);
    notifyListeners();
  }
  
}