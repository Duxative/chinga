import 'package:flutter/material.dart';
import 'package:chinga/Presentation/Views/Business.dart';
import 'package:chinga/Presentation/Views/Inventory.dart';
import 'package:chinga/Presentation/Views/Invoices.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final views = [const Business(),const Inventory(),const Invoices()];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Cotizador',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: views,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (newIndex){
            setState(() {
              selectedIndex = newIndex;
            });
          },
          iconSize: 30,
          items: [
            BottomNavigationBarItem(

                icon: Icon(Icons.inventory),
                activeIcon: Icon(Icons.inventory),
                label: 'Inventario'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                activeIcon: Icon(Icons.list),
                label: 'Cotizaciones'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.business),
                activeIcon: Icon(Icons.business),
                label: 'Empresa'
            ),
          ]
      ),
    );
  }
}

