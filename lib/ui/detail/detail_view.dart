import 'package:flutter/material.dart';
import 'package:mikutter/data/model/faq.dart';

class DetailView extends StatelessWidget {
  final Faq faq;

  DetailView({Key? key, required this.faq}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mikutter'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(faq.question, style: Theme.of(context).textTheme.headline5),
            SizedBox(
              height: 8.0,
            ),
            Text(faq.answer),
          ],
        ),
      ),
    );
  }
}
