import 'package:flutter/material.dart';
import 'package:restaurent_app_1/models/products.dart';
import 'package:restaurent_app_1/widgets/billItemTile.dart';

class OrderedItemList extends StatefulWidget {
  const OrderedItemList({
    Key key,
    @required this.product,
    @required this.product2,
    @required this.product3,
    @required this.product4,
  }) : super(key: key);

  final Product product;
  final Product product2;
  final Product product3;
  final Product product4;

  @override
  _OrderedItemListState createState() => _OrderedItemListState();
}

class _OrderedItemListState extends State<OrderedItemList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-74,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BillItemTIle(
              product: widget.product,
              itemNumber: 3,
              price: 110,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BillItemTIle(
              product: widget.product2,
              itemNumber: 5,
              price: 20,
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BillItemTIle(
              product: widget.product3,
              itemNumber: 1,
              price: 120,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BillItemTIle(
              product: widget.product4,
              itemNumber: 2,
              price: 110,
            ),
          ),
        ],
      ),
    );
  }
}