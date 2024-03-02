import 'package:mk_zap_app/app/modules/dashboard/dashboard_page.dart';
import 'package:mk_zap_app/app/modules/dashboard/dashboard_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashboardModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(DashboardStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const DashboardPage());
  }
}
