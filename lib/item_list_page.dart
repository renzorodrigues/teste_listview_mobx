import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:listview_example/controller.dart';
import 'package:listview_example/item_model.dart';
import 'package:listview_example/item_widget.dart';

class ItemListPage extends StatelessWidget {
  final Controller control = Controller();

  _adicionaNovoItem() {
    control.itemModelList.add(ItemModel(titulo: 'Mais um item', preco: 100.00));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 50, top: 20),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: _adicionaNovoItem,
            ),
          ),
          Observer(builder: (_) {
            return Container(
              height: 500,
              child: ListView.builder(
                itemCount: control.itemModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  ItemModel item = control.itemModelList[index];
                  return ItemWidget(
                    itemModel: item,
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
