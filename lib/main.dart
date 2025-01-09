import 'package:flutter/material.dart';
import 'package:myapp/componentes/jogo-da-velha.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo = 'Calculadora Web';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: titulo),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A0DAD), 
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Layout Superior
          Expanded(
            flex: 2,
            child: Container(),
          ),

          // Layout Central com bordas gradientes e a Calculadora
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Container()),
                const Expanded(
                  flex: 2,
                  child: GradientBorderContainer(
                    child: JogoDaVelha(), 
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ),

          // Layout Inferior
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),

      // Rodapé
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        color: const Color(0xFF6A0DAD),
        child: const Text(
          '@ 2025 by Rayane Versori Pagliaci',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

/// Um widget reutilizável para o contêiner central com bordas gradientes.
class GradientBorderContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final double borderWidth;

  const GradientBorderContainer({
    super.key,
    required this.child,
    this.borderRadius = 20.0,
    this.borderWidth = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 106, 13, 173), Color.fromARGB(255, 255, 217, 0)], 
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Container(
        margin: EdgeInsets.all(borderWidth),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100], // Fundo do centro
          borderRadius: BorderRadius.circular(borderRadius - borderWidth),
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
