import 'package:flutter/material.dart';
import 'package:restaurent_app_1/widgets/itemNumberNotifier.dart';
import 'package:restaurent_app_1/screens/billPage.dart';


class PinkBottomSheet extends StatelessWidget {

  final String text ;

  PinkBottomSheet({@required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,PageRouteBuilder(
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (context, animation, secondaryAnimation,child){
              animation =CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              );

              var begin = Offset(0.0,1.0);
              var end = Offset.zero;
              var curve = Curves.ease;
              var tween = Tween(
                  begin: begin,
                  end: end
              ).chain(CurveTween(curve: curve));

              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
            pageBuilder: (context, animation, secondaryAnimation){
              return BillPage();
            }
        ));

      },
      child: Container(
        height: 90,
        color: Colors.pink,
        child: Stack(
          children: <Widget>[
            Align(
              //Basket Icon
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Container(
                    height: 60,
                    width: 50,
                    child: Image.asset('images/6.png')
                ),
              ),

            ),
            ItemNumberNotifier(),
            Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}