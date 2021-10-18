import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {

  const Pagina2Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MaterialButton(
              onPressed: (){},
              child: Text('Establecer Usuarios',style: Theme.of(context).textTheme.button),
              color: Theme.of(context).primaryColorLight
            ),
            MaterialButton(
              onPressed: (){},
              child: Text('Cambiar Edad',style: Theme.of(context).textTheme.button),
              color:Theme.of(context).primaryColorLight
            ),
            MaterialButton(
              onPressed: (){},
              child: Text('Añadir Profesion',style: Theme.of(context).textTheme.button),
              color: Theme.of(context).primaryColorLight
            ),
          ]
        ),
      ),
      
    );
  }
}