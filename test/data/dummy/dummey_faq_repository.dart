import 'package:http/http.dart' as http;
import 'package:mikutter/data/model/faq.dart';
import 'package:mikutter/data/repository/faq_repository.dart';

class DummeyFaqRepository extends FaqRepository {
  DummeyFaqRepository({required http.Client client}) : super(client: client);

  @override
  Future<List<Faq>> getFaq() async {
    return [Faq('mikutterとはなんですか', '悪ふざけ。')];
  }
}
