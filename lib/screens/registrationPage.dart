import 'package:flutter/material.dart';
import 'package:restaurent_app_1/screens/homepage.dart';
import 'package:restaurent_app_1/screens/loginPage.dart';
import 'package:restaurent_app_1/widgets/formSubmitButton.dart';
import 'package:restaurent_app_1/contstans.dart';
import 'package:email_validator/email_validator.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _formKey = GlobalKey<FormState>();

  String email='';
  String password='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
//            SizedBox(
//              height: 100,
//              child: Text(
//                'Lets create a new account'
//              ),
//            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/logoBig.png',
                    width: 250,
                    height: 250,
                  ),
                ],
              ),
            ),

            Container(
              height: 100,
              width: double.infinity,
              child: Text(
                'Lets Create a new account',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                    child: TextFormField(
                      validator: (val){
                        if (EmailValidator.validate(email)==true){
                          return null;
                        }
                        else{
                          return 'Please enter a valid email';
                        }
                      } ,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (val){
                        setState(() {
                          email=val;
                        });
                      },
                      decoration:kInputFieldDecoration.copyWith(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email,color: Colors.grey,),
                        //icon: Icon(Icons.email,color: Colors.grey,),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                    child: TextFormField(
                      validator: (val)=> val.length<6 ?'Enter password more than 6 letters': null ,
                      obscureText: true,
                      onChanged: (val){
                        setState(() {
                          password=val;
                        });
                      },
                      decoration:kInputFieldDecoration.copyWith(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  FormSubmitButton(
                    buttonTitle: 'Register',
                    onPressed: ()async{
                      if(_formKey.currentState.validate()){
                        Navigator.pushNamed(context, 'loginPage');
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
