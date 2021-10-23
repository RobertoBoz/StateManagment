import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statemanagement/Models/model_usuario.dart';
import 'package:statemanagement/services/services_usuario.dart';

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
      body: StreamBuilder(
        stream: usuarioService.usuarioStream,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) { 
          return usuarioService.existeusuario ? 
          InformacionUsuario(usuario: usuarioService.usuario!,): Center(child: Text('No hay información del usuario',style: Theme.of(context).textTheme.subtitle1 ,),);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.ac_unit),
        backgroundColor: Theme.of(context).primaryColorLight,
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {

  final Usuario usuario ; 
  const InformacionUsuario({
    Key? key, required this.usuario,
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
            ListTile(title: Text('Nombre: ${usuario.nombre}',style:Theme.of(context).textTheme.bodyText1,),),
            ListTile(title: Text('Edad: ${usuario.edad} ',style:Theme.of(context).textTheme.bodyText1),),
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