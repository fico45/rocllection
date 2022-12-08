import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rocllection/data/stone/stone_model.dart';

class StoneDetailsScreen extends StatelessWidget {
  const StoneDetailsScreen({super.key, required this.stone});
  final Stone stone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stone details'),
      ),
      body: ListView(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Hero(
              tag: stone.id,
              child: Image.network(
                stone.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stone.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  stone.description,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
