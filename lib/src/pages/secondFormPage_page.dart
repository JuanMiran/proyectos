import 'package:flutter/material.dart';
import 'package:aplicacion1/src/pages/formulario_page.dart';

class SecondFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Argumentos parametros = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
            backgroundColor: Colors.black, title: Text('Menú')),
        body: Column(
          children: <Widget>[
            Container(
              width: 800.0,
              height: 600.0,
              child: Center(
                child: Image.network(
                    ''),
              ),
            ),
            Text(
              'Sección de Productois',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
