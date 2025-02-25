import 'package:tarea_1/presentation/screens/counter/counter_screen.dart';
import 'package:flutter/material.dart';

// Corre el programa de la clase mainapp
void main() {
  runApp(const MainApp());
}
 
// desde el clase se hereda los widgets del statelesswidget
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // Método build que define la interfaz de usuario del widget. Este método es obligatorio en todos los widgets.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false, // esconde la etiqueta de "debug" en la esquina 
      theme: ThemeData( // Define el tema de la aplicación.
        colorSchemeSeed: Colors.blue, // le da el color principal de la aplicación a azul. 
      ),
      home: const CounterScreen(), // dice que CounterScreen como la pantalla de inicio de la aplicación. 
    );
  }
}