import 'package:flutter/material.dart';
import 'package:restaurent_app_1/models/products.dart';

class BillItemTIle extends StatefulWidget {
  BillItemTIle({@required this.product,@required this.itemNumber,@required this.price}){
     calculatedPrice=itemNumber*price;
  }

  final Product product;
  int itemNumber;
  final int price;
   int calculatedPrice;

  @override
  _BillItemTIleState createState() => _BillItemTIleState();
}
class _BillItemTIleState extends State<BillItemTIle> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height:100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        //color: Colors.black12,
        color: Color(0xff1C201E),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0,2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        //Contains Image ,Details,Price , Remove button
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Image.asset(
              'images/${widget.product.image}',
              fit: BoxFit.cover,
              height: 80,
              width: 100,
            ),
          ),
          Row(
            //Contains Details ,Price , Remove button
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 23, 0, 20),
                child: Column(
                  children: <Widget>[
                    Text(
                      widget.product.name,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      //Contains Increment buttons
                      children: <Widget>[
                        SizedBox(
                          height: 30,

                          child: RoundIconButton(
                            icon: Icons.add,
                            onPressed: (){
                              setState(() {
                                widget.itemNumber++;
                                widget.calculatedPrice=widget.price*widget.itemNumber;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 30,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child:Text(
                              widget.itemNumber.toString(),
                            )
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: RoundIconButton(
                            icon: Icons.remove,
                            onPressed: (){
                              setState(() {
                                if(widget.itemNumber>0){
                                  widget.itemNumber--;
                                  widget.calculatedPrice=widget.price*widget.itemNumber;
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 55,),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: 45,
                child: Text(
                  widget.calculatedPrice.toString(),
                  textAlign: TextAlign.center,
                  //widget.calculatedPrice.toString(),
                  style:TextStyle(
                    color: Colors.yellow,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ) ,
                ),
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: (){
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon,@required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 45,
        height: 30
      ),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Colors.deepOrange)
      ) ,
      //fillColor: Color(0xff1C201E),
    );
  }
}
