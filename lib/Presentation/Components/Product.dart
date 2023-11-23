import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _InvoiceState();
}

class _InvoiceState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.account_box),
      title: Text('Hola'),
      subtitle: Text('Perrillo'),
      trailing: Icon(Icons.abc),
    );
  }
}
