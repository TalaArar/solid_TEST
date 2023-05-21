// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes_app/Controller/ColorController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ColorController>(
        builder: (context, value, child) => InkWell(
          onTap: () {
            Provider.of<ColorController>(context, listen: false).changeColor();
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: value.defualtColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello There",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
