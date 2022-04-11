import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'oscar wild', text: 'be youself'),
    Quote(author: 'mahmud', text: 'I will win'),
    Quote(author: 'kazi', text: 'chiro unnoto momo shir')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          title: const Text('Awesome quote'),
          centerTitle: true,
          backgroundColor: Colors.green[800],
        ),
        body: Column(
          children: quotes
              .map((quote) => Text('${quote.text} - ${quote.author}'))
              .toList(),
        ));
  }
}
