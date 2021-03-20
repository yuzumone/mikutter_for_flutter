import 'package:flutter/material.dart';
import 'package:mikutter/data/model/faq.dart';
import 'package:mikutter/ui/detail/detail_view.dart';
import 'package:mikutter/ui/home/home_view_state.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final faqs =
        context.select<HomeViewState, List<Faq>>((state) => state.faqs);
    return Scaffold(
      appBar: AppBar(
        title: const Text('mikutter'),
      ),
      floatingActionButton: Image.asset('assets/etc.png'),
      body: ListView.builder(
        itemCount: faqs.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(faqs[index].question),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailView(
                faq: faqs[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
