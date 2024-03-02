import 'package:flutter_modular/flutter_modular.dart';
import 'package:mk_zap_app/app/modules/login/login_store.dart';

import 'login_page.dart';

class LoginModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(LoginStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const LoginPage());
  }
}
