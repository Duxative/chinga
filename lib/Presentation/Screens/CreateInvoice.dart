import 'package:flutter/material.dart';

class CreateInvoice extends StatefulWidget {
  const CreateInvoice({super.key});

  @override
  State<CreateInvoice> createState() => _InvoicesState();
}

class _InvoicesState extends State<CreateInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Invoice'),
      ),
      body: Center(
        child: Text('New Invoice'),
      ),
    );
  }
}
