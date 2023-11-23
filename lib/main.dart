import 'package:chinga/Presentation/Screens/CreateInvoice.dart';
import 'package:flutter/material.dart';
import 'package:chinga/Presentation/Screens/MainScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Título',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/newInvoice':(context) => CreateInvoice()
      },
      home: MainScreen(),
    );
  }
}
