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
          Center(
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
                        'https://www.stockvault.net/data/2012/09/10/135306/thumb16.jpg',
                    name: 'Stone $i'),
              ),
            ),
        ],
      ),
    );
  }
}
