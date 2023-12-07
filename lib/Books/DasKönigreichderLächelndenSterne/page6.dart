import 'package:flutter/material.dart';

class BookPage6 extends StatelessWidget {
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
                  "Mit Entschlossenheit und Teamarbeit konfrontierten Sternchen und ihre Freunde schließlich Grisilda. Mit einem Zauber aus Licht und Freude verwandelten sie die dunkle Wolke in eine flauschige und strahlende Wolke. Grisilda erkannte, dass wahres Glück darin besteht, Licht und Liebe zu teilen.",
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
