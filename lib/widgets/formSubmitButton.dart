import 'package:flutter/material.dart';

class FormSubmitButton extends StatelessWidget {

  FormSubmitButton({@required this.buttonTitle,@required this.onPressed});
  final String buttonTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
      child: Material(
        color:Color(0xffFFAA56),
        elevation: 5, 
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: MaterialButton(
            onPressed: onPressed,
            minWidth: 300,
            height: 55,
            child: Text(
              buttonTitle,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                  fontSize: 18,
              ),
            ),
          )
        ),
      ),
    );
  }
}