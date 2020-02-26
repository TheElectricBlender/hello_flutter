import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Osca Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'My Mum', text: 'The only way is up, but how high do we want to go?'),
    Quote(author: 'My Dad', text: 'Little steps translate to big movements')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes!'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          // curly braces to allow accessing of properties
          children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        ));
  }
}
