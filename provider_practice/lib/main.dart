import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Provider/count_provider.dart';
import 'package:provider_practice/Screens/Favourites/favourites_list.dart';
import 'package:provider_practice/Screens/count_example.dart';
import 'package:provider_practice/Screens/Favourites/favourites_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountProvider(),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: FavouriteList(),
        );
      },
    );
  }
}
