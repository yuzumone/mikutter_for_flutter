import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mikutter/data/repository/faq_repository.dart';
import 'package:mikutter/main.dart';
import 'package:mikutter/ui/detail/detail_view.dart';
import 'package:mikutter/ui/home/home_view.dart';
import 'package:mikutter/ui/home/home_view_state.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import '../data/dummy/dummey_faq_repository.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  testWidgets('App widget test', (tester) async {
    await tester.pumpWidget(
      MultiProvider(providers: [
        Provider<FaqRepository>(
          create: (_) => DummeyFaqRepository(client: MockHttpClient()),
        ),
      ], child: MyApp()),
    );
  });

  testWidgets('Home view test', (tester) async {
    final page = HomeView();
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<FaqRepository>(
            create: (_) => DummeyFaqRepository(client: MockHttpClient()),
          ),
        ],
        child: MaterialApp(
          home: StateNotifierProvider<HomeViewStateNotifier, HomeViewState>(
            create: (_) => HomeViewStateNotifier(),
            child: page,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byWidget(page), findsOneWidget);
    final item = find.text('mikutterとはなんですか');
    expect(item, findsOneWidget);
    await tester.tap(item);
    await tester.pumpAndSettle();
    expect(find.byType(DetailView), findsOneWidget);
    expect(find.text('悪ふざけ。'), findsOneWidget);
  });
}
