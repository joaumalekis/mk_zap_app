import 'package:flutter_modular/flutter_modular.dart';
import 'package:mk_zap_app/app/config/router_map.dart';
import 'package:mk_zap_app/app/modules/campanhas/campanhas_module.dart';
import 'package:mk_zap_app/app/modules/clientes/clientes_module.dart';
import 'package:mk_zap_app/app/modules/configuracoes/configuracoes_module.dart';
import 'package:mk_zap_app/app/modules/dashboard/dashboard_module.dart';
import 'package:mk_zap_app/app/modules/novo_usuario/novoUsuario_module.dart';

import 'modules/login/login_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module(RouterMap.login, module: LoginModule());
    r.module(RouterMap.dashboard, module: DashboardModule());
    r.module(RouterMap.clientes, module: ClientesModule());
    r.module(RouterMap.campanhas, module: CampanhasModule());
    r.module(RouterMap.configuracoes, module: ConfiguracoesModule());
    r.module(RouterMap.novoUsuario, module: NovoUsuarioModule());
  }
}
