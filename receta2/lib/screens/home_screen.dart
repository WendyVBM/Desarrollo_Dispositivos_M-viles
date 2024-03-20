import 'package:flutter/material.dart';
import 'package:receta2/screens/bebida_screen.dart';
import 'package:receta2/screens/receta_screen.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _indicador = 0;
  static final List<Widget> menu = [
    const RecetaScreen(),
     BebidaScreen()
  ];
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola Aplicación"),
      ),
      body: menu[_indicador],
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(5.0),
          children:  [
            ListTile(
              title: const Text("Receta"),
              onTap: () {
                _indicador = 0;
                setState(() {
                });
              },
            ),
            ListTile(
              title: const Text("Bebidas"),
              onTap: () {
                _indicador = 1;
                setState(() {
                });
                Navigator.pop(context);
              },
            )

          ],
        ),
      )
    );
    
  }
}