import 'package:flutter/material.dart';
import 'paginas/inicio.dart';
import 'paginas/categorias.dart';
import 'paginas/perfil.dart';

void main() => runApp(const DivineBeautyApp());

class DivineBeautyApp extends StatelessWidget {
  const DivineBeautyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Serif'),
      home: const MainLayout(),
    );
  }
}

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;
  
  final List<Widget> _pages = [
    const InicioPage(),
    const CategoriasPage(),
    const PerfilPage(),
  ];

  void _mover(int direccion) {
    setState(() {
      // Esto hace que si estás en la última, la flecha te regrese a la primera y viceversa
      _currentIndex = (_currentIndex + direccion) % _pages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_currentIndex],
          // Flecha Izquierda
          Positioned(
            left: 10,
            bottom: MediaQuery.of(context).size.height * 0.45,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.pinkAccent, size: 30),
              onPressed: () => _mover(-1),
            ),
          ),
          // Flecha Derecha
          Positioned(
            right: 10,
            bottom: MediaQuery.of(context).size.height * 0.45,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward_ios, color: Colors.pinkAccent, size: 30),
              onPressed: () => _mover(1),
            ),
          ),
        ],
      ),
    );
  }
}