import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Mi Cuenta", style: TextStyle(fontStyle: FontStyle.italic)), 
        elevation: 0, 
        backgroundColor: Colors.white, 
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, size: 28),
            onPressed: () => print("Menú Perfil"),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundColor: Color(0xFFFFD1DC),
                  backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/KeylaPalacios/Act11_2dapantalla_divinebeauty/refs/heads/main/foto.jpg'
                  ),
                ),
                const SizedBox(width: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("TANIA G.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                    Text("Divine Customer", style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 5),
                    Text("PEDIDOS: 12", 
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFFD81B60))),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            _btn("HISTORIAL DE COMPRAS", Colors.white, Colors.black),
            const SizedBox(height: 15),
            _btn("CONFIGURACIÓN", Colors.black, Colors.white),
            
            const Spacer(),
            
            // --- AQUÍ ESTÁN LAS ESTRELLAS (IGUAL QUE EN INICIO) ---
            const Center(
              child: Icon(
                Icons.auto_awesome, 
                size: 80, 
                color: Color(0xFFFFC1E3), // El mismo rosa claro de las estrellas de inicio
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Icono decorativo de la brocha (opcional, lo dejé más sutil)
            const Opacity(
              opacity: 0.05,
              child: Icon(Icons.brush, size: 50, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _btn(String t, Color b, Color tc) => Container(
    width: double.infinity,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: b, 
      borderRadius: BorderRadius.circular(15), 
      border: Border.all(color: Colors.black, width: 1.5)
    ),
    child: Center(
      child: Text(t, style: TextStyle(color: tc, fontWeight: FontWeight.bold, letterSpacing: 1))
    ),
  );
}