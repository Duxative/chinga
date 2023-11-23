import 'package:flutter/material.dart';

class Company extends StatefulWidget {
  const Company({super.key});

  @override
  State<Company> createState() => _InvoiceState();
}

class _InvoiceState extends State<Company> {
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
