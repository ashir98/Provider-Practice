import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Provider/count_provider.dart';

class CountExample extends StatelessWidget {
  const CountExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Example"),
        centerTitle: true,
      ),
      body: Consumer<CountProvider>(
        builder:(context, value, child) =>  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text(value.count.toString(),style: TextStyle(fontSize: 50),))
      
          ],
        ),
      ),

      floatingActionButton: Consumer<CountProvider>(
        builder:(context, value, child) =>  FloatingActionButton(
          onPressed:() {
            value.countIncrement();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}