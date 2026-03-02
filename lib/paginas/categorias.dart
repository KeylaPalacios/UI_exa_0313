import 'package:flutter/material.dart';

class CategoriasPage extends StatelessWidget {
  const CategoriasPage({super.key});

@override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cats = [
      {
        'n': 'LABIALES', 
        'img': 'https://raw.githubusercontent.com/KeylaPalacios/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/labiales.jpg'
      },
      {
        'n': 'BASES', 
        'img': 'https://raw.githubusercontent.com/KeylaPalacios/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/bas.jpg'
      },
      {
        'n': 'CORRECTORES', 
        'img': 'https://raw.githubusercontent.com/KeylaPalacios/Act11_2dapantalla_divinebeauty/refs/heads/main/corr.jpg'
      },
      {
        'n': 'RUBORES', 
        'img': 'https://raw.githubusercontent.com/KeylaPalacios/Act11_2dapantalla_divinebeauty/refs/heads/main/rubor.jpg'
      }, // <-- Faltaba la comilla aquí
      {
        'n': 'ILUMINADOR', 
        'img': 'https://raw.githubusercontent.com/KeylaPalacios/Act11_2dapantalla_divinebeauty/refs/heads/main/ilu.jpg'
      }, // <-- Faltaba la comilla aquí
      {
        'n': 'SOMBRAS', 
        'img': 'https://raw.githubusercontent.com/KeylaPalacios/Act11_2dapantalla_divinebeauty/refs/heads/main/sombras.jpg'
      }, // <-- Faltaba la comilla aquí
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Divine Shop", 
          style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)
        ),
        elevation: 0, 
        backgroundColor: Colors.white, 
        foregroundColor: Colors.black,
        // --- AQUÍ ESTÁ EL ICONO DE LAS TRES BARRAS ---
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, size: 28), // Icono de 3 barras
            onPressed: () {
              // Aquí puedes programar que se abra un menú lateral o ajustes
              print("Menú presionado");
            },
          ),
          const SizedBox(width: 10), // Un pequeño espacio al borde
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 15, 
          mainAxisSpacing: 20,
          childAspectRatio: 0.8,
        ),
        itemCount: cats.length,
        itemBuilder: (context, i) => Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    )
                  ],
                  image: DecorationImage(
                    image: NetworkImage(cats[i]['img']!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              cats[i]['n']!,
              style: const TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 12, 
                letterSpacing: 1.2
              ),
            ),
          ],
        ),
      ),
    );
  }
}