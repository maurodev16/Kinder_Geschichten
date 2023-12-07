import 'package:flutter/material.dart';

class BookPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/stars.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Das Königreich der Lächelnden Sterne',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                Text(
                  "Während der Reise trafen Sternchen und ihre Freunde auf aufregende Herausforderungen wie das Springende Regenbogen und das Lösen von Rätseln im Lichtwald. Sie lernten wichtige Lektionen über Freundschaft, Mut und die Bedeutung des Lächelns, auch in den dunkelsten Momenten.",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20.0),
                // Adicione mais texto ou elementos conforme necessário
                ElevatedButton(
                  onPressed: () {
                    // Adicione a lógica para avançar para a próxima página
                  },
                  child: Text(
                    'Próxima Página',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
