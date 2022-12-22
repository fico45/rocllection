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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(int.parse(widget.stone.color)).withOpacity(0.1),
              Color(int.parse(widget.stone.color)).withOpacity(0.3),
            ],
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
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
          ],
        ),
      ),
    );
  }
}
