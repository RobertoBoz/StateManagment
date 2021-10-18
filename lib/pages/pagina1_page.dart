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
          children: <Widget> [
            Text('General', style: Theme.of(context).textTheme.subtitle1, ),
            const Divider(),
            ListTile(title: Text('Nombre: ',style:Theme.of(context).textTheme.bodyText1,),),
            ListTile(title: Text('Edad: ',style:Theme.of(context).textTheme.bodyText1),),
            Text('Profesiones', style: Theme.of(context).textTheme.subtitle1,  ),
            const Divider(),
             ListTile(title: Text('Profesiones: 1',style:Theme.of(context).textTheme.bodyText1),),
             ListTile(title: Text('Profesiones: 1',style:Theme.of(context).textTheme.bodyText1),),
             ListTile(title: Text('Profesiones: 1',style:Theme.of(context).textTheme.bodyText1),),

          ]
        ),
      )
    );
  }
}