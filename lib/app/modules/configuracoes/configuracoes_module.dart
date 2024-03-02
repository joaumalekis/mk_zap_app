import 'package:mk_zap_app/app/modules/configuracoes/configuracoes_page.dart';
import 'package:mk_zap_app/app/modules/configuracoes/configuracoes_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfiguracoesModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(ConfiguracoesStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute,
        child: (context) => const ConfiguracoesPage());
  }
}
