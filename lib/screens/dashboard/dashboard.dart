import 'package:flutter/material.dart';
import 'package:rocllection/screens/dashboard/widgets/stone_list_tile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return StoneListTile();
          },
        ),
      ),
    );
  }
}
