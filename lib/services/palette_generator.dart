import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

Future<PaletteGenerator> updatePaletteGenerator(String imageUrl) async {
  PaletteGenerator paletteGenerator = await PaletteGenerator.fromImageProvider(
    Image.network(imageUrl).image,
  );
  print('Color: ${paletteGenerator.dominantColor?.color}');
  return paletteGenerator;
}
