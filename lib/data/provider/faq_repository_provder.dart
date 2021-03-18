import 'package:http/http.dart' as http;
import 'package:mikutter/data/repository/faq_repository.dart';
import 'package:provider/provider.dart';

final faqRepositoryProvider = Provider<FaqRepository>(
    create: (_) => FaqRepository(client: http.Client()));
