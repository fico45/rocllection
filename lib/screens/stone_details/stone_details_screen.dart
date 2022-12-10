import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:rocllection/data/stone/stone_model.dart';
import 'package:rocllection/services/palette_generator.dart';

class StoneDetailsScreen extends StatefulWidget {
  const StoneDetailsScreen({super.key, required this.stone});
  final Stone stone;

  @override
  State<StoneDetailsScreen> createState() => _StoneDetailsScreenState();
}

class _StoneDetailsScreenState extends State<StoneDetailsScreen> {
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
              tag: widget.stone.id,
              child: Image.network(
                widget.stone.imageUrl,
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
                  widget.stone.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.stone.description,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
          FutureBuilder(
            future: updatePaletteGenerator(widget.stone.imageUrl),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                PaletteGenerator paletteGenerator =
                    snapshot.data as PaletteGenerator;
                return Container(
                  height: 100,
                  width: double.infinity,
                  color: paletteGenerator.dominantColor?.color,
                );
              } else {
                return Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.red,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
