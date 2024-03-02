import 'package:mobx/mobx.dart';

part 'novo_usuario_store.g.dart';

class NovoUsuarioStore = _NovoUsuarioStoreBase with _$NovoUsuarioStore;
abstract class _NovoUsuarioStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}