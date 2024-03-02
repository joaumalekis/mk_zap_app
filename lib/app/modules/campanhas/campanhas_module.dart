import 'package:mk_zap_app/app/modules/campanhas/campanhas_page.dart';
import 'package:mk_zap_app/app/modules/campanhas/campanhas_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CampanhasModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(CampanhasStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const CampanhasPage());
  }
}
