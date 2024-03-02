import 'package:flutter_test/flutter_test.dart';
import 'package:mk_zap_app/app/modules/novo_usuario/novo_usuario_store.dart';
 
void main() {
  late NovoUsuarioStore store;

  setUpAll(() {
    store = NovoUsuarioStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}