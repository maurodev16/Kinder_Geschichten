import 'package:flutter/material.dart';

class BookPage3 extends StatelessWidget {
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
                  "Eines Tages tauchte jedoch eine dunkle Wolke namens Grisilda am Horizont auf. Sie war dafür bekannt, Sterne auszulöschen und ihre Lächeln zu stehlen. Grisilda war entschlossen, den Glanz von Sternchen zu nehmen und die Traurigkeit im Reich zu verbreiten.",
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
