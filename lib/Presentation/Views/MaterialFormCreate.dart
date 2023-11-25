//import 'package:chinga/Controller/DBConnection.dart';
import 'package:chinga/Presentation/Screens/MainScreen.dart';
import 'package:flutter/material.dart';

class MaterialFormCreate extends StatefulWidget {
  const MaterialFormCreate({super.key});

  @override
  State<MaterialFormCreate> createState() => _MaterialFormCreateState();
}

class _MaterialFormCreateState extends State<MaterialFormCreate> {
  @override
  Widget build(BuildContext context) {
    final concepto = TextEditingController();
    final precio = TextEditingController();
    //final db = DBConnection();
    List listname = ['CM', 'CM2', 'M', 'M2', 'INCH'];
    return SafeArea(
        child: ListView(
      padding: EdgeInsets.all(15.0),
      children: [
        Column(
          children: [
            Container(
              child: Text('Concepto',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              padding: EdgeInsetsDirectional.only(bottom: 15.0),
            ),
            Container(
              child: TextField(
                controller: concepto,
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                decoration: const InputDecoration(
                    hintText: "Ecribe un concepto",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                      ),
                    ),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 0.5))),
              ),
            ),
            Container(
              padding: EdgeInsetsDirectional.only(top: 15.0),
              child: DropdownButtonFormField(
                hint: Text('Unidad de medidad'),
                icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 0.2,
                        ),
                        borderRadius: BorderRadius.circular(50))),
                items: listname.map((name) {
                  return DropdownMenuItem(child: Text(name), value: name);
                }).toList(),
                onChanged: (value) {
                  print(value);
                },
                isDense: true,
              ),
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    padding: EdgeInsetsDirectional.only(top: 10.0),
                    child: Text('Precio: '),
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: EdgeInsetsDirectional.only(top: 10.0),
                    child: TextField(
                      controller: precio,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsetsDirectional.only(top: 15.0, end: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const MainScreen();
                        }),
                      );
                    },
                    child: Text('Cancelar'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[400],
                        foregroundColor: Colors.grey[100],
                        //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        textStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                    padding: EdgeInsetsDirectional.only(top: 15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Text('Registrar'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          foregroundColor: Colors.white,
                          //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                          textStyle: TextStyle(color: Colors.white)),
                    ))
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
