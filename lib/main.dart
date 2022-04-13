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

  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: const Text('Awesome quote'),
          centerTitle: true,
          backgroundColor: Colors.green[800],
        ),
        body: Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ));
  }
}

class QuoteCard extends StatelessWidget {
  Quote quote;

  //constructor
  Quote({this.quote});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                quote.text,
                style: TextStyle(
                  color: Colors.green[600],
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Center(
              child: Text(
                quote.author,
                style: TextStyle(
                  color: Colors.green[800],
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
