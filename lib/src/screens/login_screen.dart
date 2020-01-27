import 'package:flutter/material.dart';
import 'package:form_app/src/mixins/validation_mixins.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixins{

  final GlobalKey<FormState>  formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Form(
        key: formkey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0),),
            submitField()
        ],),
      ),      
    );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'E-mail',
        hintText: 'you@example.com'
      ),
      validator: validateEmail,
      onSaved: (value){
        print(value);
      },
    );

  }

  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Contraseña',
        hintText: 'contraseña'
      ),
      validator: validatePassword,
      onSaved: (value){
        print(value);
      },
    );

  }

  Widget submitField(){
    return  RaisedButton(
      child: Text("Enviar"),
      onPressed: (){
        if(formkey.currentState.validate()){
          formkey.currentState.save();
        } 
      },
    );
  }
  
}