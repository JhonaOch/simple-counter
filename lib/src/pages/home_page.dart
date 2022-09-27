// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  // ignore: unnecessary_new
  final estilo = new TextStyle(fontSize:25);
  final conteo=10;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Titulo')
          ),
      ),
      body:Center( 
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text('Numero de click:',style:estilo ),
                Text('$conteo' ,style:estilo),

              ],
            ),
            
      ),

      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add_circle_outline),
        onPressed: () {
          // ignore: avoid_print
          print('Hola Mundo');
        } ,),
      
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,



    );
  }
}