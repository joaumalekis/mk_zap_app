import 'package:flutter_test/flutter_test.dart';
import 'package:mk_zap_app/app/modules/campanhas/campanhas_store.dart';
 
void main() {
  late CampanhasStore store;

  setUpAll(() {
    store = CampanhasStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}