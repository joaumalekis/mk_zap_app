import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mk_zap_app/app/modules/novo_usuario/novoUsuario_module.dart';
 
void main() {

  setUpAll(() {
    initModule(NovoUsuarioModule());
  });
}