import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Luis Cesar Cervantes Mat:1057'),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container único con contenido en línea (Row)
              Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.teal[200], // 1. Color
                  borderRadius:
                      BorderRadius.circular(15), // 2. Bordes redondeados
                  boxShadow: [
                    // 3. Sombra
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                // Contenido en fila (no Column)
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      // 4. Icono
                      Icons.star,
                      size: 40,
                      color: Colors.indigo,
                    ),
                    Text(
                      // 5. Texto
                      'Container en Fila',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.indigo[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
