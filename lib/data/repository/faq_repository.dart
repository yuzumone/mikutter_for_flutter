import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mikutter/data/model/faq.dart';

class FaqRepository {
  final url = 'https://mikutter.hachune.net/faq.json';
  final http.Client client;

  FaqRepository({required this.client});

  Future<List<Faq>> getFaq() async {
    var faqs = <Faq>[];
    var data = await client.get(Uri.parse(url));
    var encordedData = utf8.decode(data.bodyBytes);
    if (data.statusCode < 300) {
      faqs = json
          .decode(encordedData)
          .map((x) => Faq.fromJson(x))
          .toList()
          .cast<Faq>();
    }
    return faqs;
  }
}
