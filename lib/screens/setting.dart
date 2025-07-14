import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting',style: TextStyle(fontSize: 25),),
      ),
      body: const Center(
        child: Text('This is an empty page for now '),
      ),
    );
  }
}