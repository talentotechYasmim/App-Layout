import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Programa Layout'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
        children: [
          // Layout Superior - reduzido
          Center(
            child: Container(
              width: 250, // Define a largura
              height: 60, // Define a altura menor
              color: Colors.green, // Cor do container
              alignment: Alignment.center,
              child: const Text(
                'Layout Superior:',
                style: TextStyle(
                  fontSize: 15, // Tamanho de fonte menor
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),

          // Meu Aplicativo - maior e quadrado
          Center(
            child: Container(
              width: 300, // Define uma largura maior
              height: 150, // Define uma altura maior
              color: Color(0xFF8B5E3C), // Cor marrom (quadrado)
              alignment: Alignment.center,
              child: const Text(
                'Meu aplicativo',
                style: TextStyle(
                  fontSize: 30, // Tamanho da fonte maior
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),

          // Layout Inferior - reduzido
          Center(
            child: Container(
              width: 250, // Define a largura
              height: 60, // Define a altura menor
              color: Colors.pink, // Cor do container
              alignment: Alignment.center,
              child: const Text(
                'Layout Inferior:',
                style: TextStyle(
                  fontSize: 15, // Tamanho de fonte menor
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
