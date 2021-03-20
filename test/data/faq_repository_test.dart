import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:mikutter/data/model/faq.dart';
import 'package:mikutter/data/repository/faq_repository.dart';

void main() {
  group('faq repository test', () {
    test('OK: getFaq()', () async {
      var mockClient = MockClient((_) async {
        var result =
            '[{"question":"I am English speaker. Can I use Mikutter in English?", "answer":"English translate: Yes."}]';
        return Response(result, 200);
      });
      var repo = FaqRepository(client: mockClient);
      var actual = await repo.getFaq();
      var expected = [
        Faq('I am English speaker. Can I use Mikutter in English?',
            'English translate: Yes.')
      ];
      expect(actual.length, expected.length);
      expect(actual[0].question, expected[0].question);
      expect(actual[0].answer, expected[0].answer);
    });

    test('NG: getFaq()', () async {
      var mockClient = MockClient((_) async {
        return Response('', 404);
      });
      var repo = FaqRepository(client: mockClient);
      var actual = await repo.getFaq();
      expect(actual.length, 0);
      expect(actual, []);
    });
  });
}
