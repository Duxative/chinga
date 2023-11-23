import 'package:flutter/material.dart';
import 'package:chinga/Presentation/Components/Invoice.dart';

class Invoices extends StatefulWidget {
  const Invoices({super.key});

  @override
  State<Invoices> createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:  ListView(
          children:  [
            Invoice(),
            Invoice(),
            Invoice(),
            Invoice(),
            Invoice(),
            Invoice(),
            Invoice(),
            Invoice(),
            Invoice(),
            Invoice(),
            Invoice(),
            Invoice(),
            Invoice()
          ],
        )
    );
  }
}
