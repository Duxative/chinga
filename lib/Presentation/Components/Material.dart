import 'package:flutter/material.dart';

class Material extends StatefulWidget {
  const Material({super.key});

  @override
  State<Material> createState() => _InvoiceState();
}

class _InvoiceState extends State<Material> {
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
