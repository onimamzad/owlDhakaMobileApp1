import 'package:flutter/material.dart';

class ItemNumberNotifier extends StatelessWidget {
  const ItemNumberNotifier({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      //Number of Items on cart
      top: 30,
      left: 30,
      child: Padding(
        padding: const EdgeInsets.only(left:30.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2,1),
                blurRadius: 3,
              ),
            ],
          ),
          child: Padding(
            //Text
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Text('2',
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
          ),
        ),
      ),
    );
  }
}