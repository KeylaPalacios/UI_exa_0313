import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: const BoxDecoration(
            color: Color(0xFF1A1A1A),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
          ),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Divine Beauty!", style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                    Text("MAKEUP & COSMETICS", style: TextStyle(color: Color(0xFFFFC1E3), letterSpacing: 2, fontSize: 10)),
                  ],
                ),
              ),
              const Spacer(),
              const Center(child: Icon(Icons.auto_awesome, size: 200, color: Colors.pinkAccent)),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ],
    );
  }
}