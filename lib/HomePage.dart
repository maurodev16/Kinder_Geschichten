import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Books/DasKönigreichderLächelndenSterne/page1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpeg'),
            fit: BoxFit.cover, // Ajusta a imagem para cobrir toda a tela
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
            ),
            itemCount: books.length,
            itemBuilder: (context, index) {
              return BookCard(book: books[index]);
            },
          ),
        ),
      ),
    );
  }
}

class Book {
  final String title;
  final String imageUrl;
  final Color color;

  Book({required this.title, required this.color, required this.imageUrl});
}

class BookCard extends StatelessWidget {
  final Book book;

  BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => BookPage1(),
        );
      },
      child: Card(
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              book.imageUrl,
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Book> books = [
  Book(
    title: 'Das Königreich der Lächelnden Sterne',
    imageUrl: 'assets/images/stars.png',
    color: Colors.red,
  ),
  Book(
    title: 'Die Abenteuer der Prinzessin',
    imageUrl: 'assets/images/stars.png',
    color: Colors.green,
  ),
  Book(
    title: 'Die Abenteuer der Prinzessin',
    imageUrl: 'assets/images/stars.png',
    color: Colors.pink,
  ),
  Book(
    title: 'Die Abenteuer der Prinzessin',
    imageUrl: 'assets/images/stars.png',
    color: Colors.orange,
  ),
  Book(
    title: 'Die Abenteuer der Prinzessin',
    imageUrl: 'assets/images/stars.png',
    color: Colors.purple,
  ),
  Book(
    title: 'Die Abenteuer der Prinzessin',
    imageUrl: 'assets/images/stars.png',
    color: Colors.pinkAccent,
  ),
  Book(
    title: 'Die Abenteuer der Prinzessin',
    imageUrl: 'assets/images/stars.png',
    color: Colors.redAccent,
  ),
  Book(
    title: 'Die Abenteuer der Prinzessin',
    imageUrl: 'assets/images/stars.png',
    color: Colors.yellowAccent,
  ),
];
