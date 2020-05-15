import 'package:flutter/material.dart';
import 'package:listview_example/item_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel itemModel;

  ItemWidget({this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Text('Título: ${this.itemModel.titulo}'),
          Text('Preço: ${this.itemModel.preco.toString()}'),
        ],
      ),
    );
  }
}
