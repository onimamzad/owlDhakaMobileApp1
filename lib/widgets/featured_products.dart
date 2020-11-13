import 'package:flutter/material.dart';
import 'package:restaurent_app_1/models/products.dart';


List<Product> productList = [
  Product(name: 'Chicken Biriyani', price: 240,image: '1.jpg'),
  Product(name: 'Nan Ruti', price: 180,image: '2.jpeg'),
  Product(name: 'Beef kabab', price: 30,image: '3.jpeg'),
  Product(name: 'Chiken Kabab', price: 170,image: '4.jpeg'),
];

class Featured extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 240,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      offset:Offset (1,1),
                      blurRadius: 2
                  )
                ],
              ),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                    ),
                    child: Image.asset(
                        'images/${productList[index].image}',
                      fit: BoxFit.cover,
                      height: 140,
                      width: 500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 13, 8, 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          productList[index].name,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          productList[index].price.toString(),
                          style: TextStyle(
                              fontSize: 16
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(48, 4, 48, 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },

      ),
    );
  }
}

