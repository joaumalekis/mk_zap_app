import 'package:flutter_test/flutter_test.dart';
import 'package:mk_zap_app/app/modules/clientes/clientes_store.dart';
 
void main() {
  late ClientesStore store;

  setUpAll(() {
    store = ClientesStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}