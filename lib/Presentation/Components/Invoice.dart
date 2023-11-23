import 'package:flutter/material.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.account_box),
      title: Text('Sofía Ramírez'),
      subtitle: Text('Luis Encinas'),
      trailing: Text('\$200',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
    );
  }
}
