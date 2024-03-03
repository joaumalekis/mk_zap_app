import 'package:mk_zap_app/app/modules/clientes/editar_cliente/editar_cliente_page.dart';
import 'package:mk_zap_app/app/modules/clientes/editar_cliente/editar_cliente_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EditarClienteModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(EditarClienteStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute,
        child: (context) => const EditarClientePage());
  }
}
