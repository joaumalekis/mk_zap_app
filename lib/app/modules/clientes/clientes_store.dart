import 'package:mobx/mobx.dart';

part 'clientes_store.g.dart';

class ClientesStore = _ClientesStoreBase with _$ClientesStore;
abstract class _ClientesStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}