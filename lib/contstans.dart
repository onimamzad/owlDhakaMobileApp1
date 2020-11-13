import 'package:flutter/material.dart';

const kInputFieldDecoration= InputDecoration(


    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: Color(0xffFFAA56),width: 2.0,
      ),
    ),


    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: Colors.red,width: 2.0,
      ),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: Colors.red,width: 2.0,
      ),
    ),


    enabledBorder:OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: Color(0xffFFAA56),width: 1.0,
      ),
    ),
    hintStyle: TextStyle(
      fontFamily: 'Montserrat',
    )
);
