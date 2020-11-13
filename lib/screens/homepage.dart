import 'package:flutter/material.dart';
import 'package:restaurent_app_1/screens/billPage.dart';
import 'package:restaurent_app_1/widgets/featured_products.dart';
import 'package:restaurent_app_1/widgets/itemNumberNotifier.dart';
import 'package:restaurent_app_1/widgets/pinkBottomSheet.dart';

class HomePage extends StatefulWidget {
  String homeRoute = 'homePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black54,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            //Navbar Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Nazira Bazar',
                    style: TextStyle(
                      fontFamily: 'MontserratRegular',
                      fontSize: 18,
                    ),
                  ),
                ),
                IconButton(
                  icon:Icon(Icons.menu),
                  onPressed: (){},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //Food Item Text Div
            Text(
                'Food Items',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 22,
                  color: Colors.grey
                ),
            ),
            SizedBox(
              height: 10,
            ),


            //Restaurent name Text Div
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Hotel Razzak',
                style: TextStyle(
                    fontSize: 22
                ),
              ),
              height:50,
            ),
            //Product list
            Featured(),
            //Text div
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Bismillah Kabab',
                style: TextStyle(
                  fontSize: 22
                ),
              ),
              height:50,
            ),
            //Products
            Featured(),
            //Box for space under Bottom sheet
            SizedBox(
              height: 95,
            )
          ],
        ),
      ),
      bottomSheet: PinkBottomSheet(text: 'View Cart',),
    );
  }
}






