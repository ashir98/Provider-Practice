import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Provider/count_provider.dart';
import 'package:provider_practice/Provider/favourite_provider.dart';
import 'package:provider_practice/Provider/slider_provider.dart';
import 'package:provider_practice/Provider/theme_provider.dart';
import 'package:provider_practice/Screens/Favourites/favourites_list.dart';
import 'package:provider_practice/Screens/count_example.dart';
import 'package:provider_practice/Screens/Favourites/favourites_example.dart';
import 'package:provider_practice/Screens/slider_example.dart';
import 'package:provider_practice/Screens/theme_example.dart';

void main() {
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SliderProvider(),),
        ChangeNotifierProvider(create:(context) => ThemeProvider(),)
      ],
      builder: (context, child) {
        var provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          theme: provider.currentTheme,
          home: ThemeExample(),
        );
      },
    );
  }
}


// ChangeNotifierProvider(
//       create: (context) => FavouriteProvider(),
//       builder: (context, child) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           home: SliderExample(),
//         );
//       },
//     );
