import 'package:flutter/material.dart';
import 'package:rocllection/data/stone/stone_model.dart';
import 'package:rocllection/screens/dashboard/widgets/stone_list_tile.dart';
import 'package:rocllection/widgets/logo.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          const Center(
            child: Logo(),
          ),
          for (var i = 0; i < 10; i++)
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: StoneListTile(
                stone: Stone(
                  addedDate: DateTime.now().toString(),
                  description: 'Short description',
                  id: '$i',
                  imageUrl:
                      'https://www.thoughtco.com/thmb/OSJY6PDpC4WJSaQMyKF8KEgsGnk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Olivine-58bd84db5f9b58af5cbd7fff.jpg',
                  name: 'Stone $i',
                ),
              ),
            ),
        ],
      ),
    );
  }
}
