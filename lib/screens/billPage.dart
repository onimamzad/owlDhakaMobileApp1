import 'package:flutter/material.dart';
import 'package:restaurent_app_1/models/products.dart';
import 'package:restaurent_app_1/widgets/orderedItemList.dart';

class BillPage extends StatefulWidget {
  final String loginRoute = 'loginPage';
  @override
  _BillPageState createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {



  List<Product> productList = [
    Product(name: 'Chicken Biriyani', price: 240,image: '1.jpg'),
    Product(name: 'Nan Ruti', price: 180,image: '2.jpeg'),
    Product(name: 'Beef kabab', price: 30,image: '3.jpeg'),
    Product(name: 'Chiken Kabab', price: 170,image: '4.jpeg'),
  ];
  Product product =  Product(name: 'Chicken Biriyani', price: 240,image: '1.jpg');
  Product product2 = Product(name: 'Nan Ruti', price: 180,image: '2.jpeg');
  Product product3= Product(name: 'Beef kabab', price: 30,image: '3.jpeg');
  Product product4= Product(name: 'Chiken Kabab', price: 170,image: '4.jpeg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:Theme.of(context).primaryColorDark ,
      backgroundColor: Colors.white24,

      body:  Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(top:50,left:50,right:50),
            child: GestureDetector(
              onTap:(){Navigator.pop(context);},
              child: Icon(
                Icons.clear,
              ),
            ),
          ),
          //List View Container
          OrderedItemList(product: product, product2: product2, product3: product3, product4: product4),
//          Container(
//            child: RaisedButton(
//              onPressed: (){},
//              child: Text("Let's order"),
//            ),
//          ),
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.fromLTRB(70, 0, 70, 50),
        decoration: BoxDecoration(
          color: Color(0xff3D3D3D),
        ),
        height: 110,
        width: double.infinity,
        child: RaisedButton(
          elevation: 6,
          child: Text(
              "Let's order",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          color: Color(0xff3D3D3D),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: Colors.deepOrange
            ),
          ),
          onPressed: (){
            Navigator.pushNamed(context,'loginPage' );
          },
        ),
      ),
    );
  }
}





