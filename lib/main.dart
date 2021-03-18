import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mikutter/data/provider/faq_repository_provder.dart';
import 'package:mikutter/ui/home/home_view.dart';
import 'package:mikutter/ui/home/home_view_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        faqRepositoryProvider,
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StateNotifierProvider<HomeViewStateNotifier, HomeViewState>(
        create: (_) => HomeViewStateNotifier(),
        child: HomeView(),
      ),
    );
  }
}
