import 'package:chinga/Presentation/Views/MaterialFormCreate.dart';
import 'package:flutter/material.dart';
import 'package:chinga/Presentation/Screens/MainScreen.dart';

class CreateMaterial extends StatefulWidget {
  const CreateMaterial({super.key});

  @override
  State<CreateMaterial> createState() => _CreateMaterialState();
}

class _CreateMaterialState extends State<CreateMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Material'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const MainScreen();
            }),
          );
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
      ),
      body:
      MaterialFormCreate()
      ,
      );
  }
}