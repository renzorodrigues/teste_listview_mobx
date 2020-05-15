import 'package:listview_example/item_model.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  
  @observable
  List<ItemModel> itemModelList = [
    ItemModel(
      titulo: 'Item 1',
      preco: 100.00,
    ),
    ItemModel(
      titulo: 'Item 2',
      preco: 100.00,
    ),
  ].asObservable();
}
