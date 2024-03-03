import 'package:mobx/mobx.dart';

part 'editar_cliente_store.g.dart';

class EditarClienteStore = _EditarClienteStoreBase with _$EditarClienteStore;
abstract class _EditarClienteStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}