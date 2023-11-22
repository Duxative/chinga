import 'package:flutter/material.dart';

class Invoices extends StatelessWidget {
  const Invoices({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        leading: Icon(Icons.abc),
        title: Text('Title'),
        subtitle: Text('Subtitle'),
      ),
    );
  }
}
