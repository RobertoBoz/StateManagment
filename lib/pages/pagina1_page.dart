import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pagina1Page extends StatelessWidget {

  const Pagina1Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: const InformacionUsuario(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.ac_unit),
        backgroundColor: Theme.of(context).primaryColorLight,
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column( 
          children: const <Widget> [
            Text('General', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold), ),
            Divider(),
            ListTile(title: Text('Nombre: '),),
            ListTile(title: Text('Edad: '),),
            Text('Profesiones', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold), ),
            Divider(),
            ListTile(title: Text('Profesiones: 1'),),
            ListTile(title: Text('Profesiones: 1'),),
            ListTile(title: Text('Profesiones: 1'),),

          ]
        ),
      )
    );
  }
}