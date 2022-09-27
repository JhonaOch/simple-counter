// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ContadorPage extends StatefulWidget {
 

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
   // ignore: unnecessary_new
   final _estilo = new TextStyle(fontSize:25);
   int _conteo=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Titulo2')
          ),
      ),
      body:Center( 
            // ignore: duplicate_ignore
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                Text('Numero de click:',style:_estilo ),
                Text('$_conteo' ,style:_estilo),

              ],
            ),
            
      ),

      floatingActionButton:_crearBotones(),
      
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed:_reset),
        Expanded(child: SizedBox(width: 5.0,)),
        FloatingActionButton(child: Icon(Icons.remove),onPressed:_remove),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add),onPressed:_add),
      ],
    );
  }

  void _add(){
    setState(() =>_conteo++);
  }

   void _remove(){
    setState(() =>_conteo--);
  }

   void _reset(){
    setState(() =>_conteo = 0);
  }
}