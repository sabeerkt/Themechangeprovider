import 'package:colorchnageprovider/color_db_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Provider.of<ColorProvider>(context, listen: false).colorChange();
            },
            child: Consumer<ColorProvider>(
              builder: (context, value, child) {
                return Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(color: value.colls.elementAt(value.theme)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
