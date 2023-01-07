import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Provider/slider_provider.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  @override
  Widget build(BuildContext context) {
    double value = 1.0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Example"),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(
            builder:(context, value, child) => Slider(
              min: 0,
              max: 1,
              value: value.val,
              onChanged: (val) {
              value.setValue(val);
                
              },
            ),
          ),

          Consumer<SliderProvider>(
            builder:(context, value, child) =>  Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue.withOpacity(value.val),
            ),
          )
          
        ],
      ),
    );
  }
}