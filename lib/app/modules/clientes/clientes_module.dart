import 'package:mk_zap_app/app/modules/clientes/clientes_page.dart';
import 'package:mk_zap_app/app/modules/clientes/clientes_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClientesModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(ClientesStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const ClientesPage());
  }
}
