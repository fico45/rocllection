import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddNewStoneScreen extends StatefulWidget {
  const AddNewStoneScreen({super.key});

  @override
  State<AddNewStoneScreen> createState() => _AddNewStoneScreenState();
}

class _AddNewStoneScreenState extends State<AddNewStoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Stone'),
      ),
      body: Container(
        child: const Text('Add New Stone'),
      ),
    );
  }
}
