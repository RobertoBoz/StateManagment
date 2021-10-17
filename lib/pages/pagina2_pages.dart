import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {

  const Pagina2Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MaterialButton(
              onPressed: (){},
              child: const Text('Establecer Usuarios',style: TextStyle(color: Colors.white)),
              color: Colors.purple
            ),
            MaterialButton(
              onPressed: (){},
              child: const Text('Cambiar Edad',style: TextStyle(color: Colors.white)),
              color: Colors.purple
            ),
            MaterialButton(
              onPressed: (){},
              child: const Text('Añadir Profesion',style: TextStyle(color: Colors.white)),
              color: Colors.purple
            ),


          ]
        ),
      ),
      
    );
  }
}