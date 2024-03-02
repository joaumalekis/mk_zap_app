import 'package:mobx/mobx.dart';

part 'campanhas_store.g.dart';

class CampanhasStore = _CampanhasStoreBase with _$CampanhasStore;
abstract class _CampanhasStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}