import 'package:mk_zap_app/app/modules/novo_usuario/novo_usuario_page.dart';
import 'package:mk_zap_app/app/modules/novo_usuario/novo_usuario_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NovoUsuarioModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(NovoUsuarioStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const NovoUsuarioPage());
  }
}
