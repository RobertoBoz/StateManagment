import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/Models/model_usuario.dart';
import 'package:statemanagement/services/usuario_services.dart';

class Pagina1Page extends StatelessWidget {

  const Pagina1Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorLight,
        actions: [
          IconButton(onPressed: (){ usuarioService.borraredad();}, icon: const Icon(Icons.delete))
        ],
      ),
      body: (usuarioService.existeUsuario) ? InformacionUsuario(user: usuarioService.usuario,) : const Center(child: Text('No hay usuario.'),),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.ac_unit),
        backgroundColor: Theme.of(context).primaryColorLight,
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario? user;
  const InformacionUsuario({
    Key? key, required this.user,
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
            ListTile(title: Text('Nombre: ${user?.nombre}',style:Theme.of(context).textTheme.bodyText1,),),
            ListTile(title: Text('Edad: ${user?.edad}',style:Theme.of(context).textTheme.bodyText1),),
            Text('Profesiones', style: Theme.of(context).textTheme.subtitle1,  ),
            const Divider(),
            ...user!.profesiones!.map(
              (profesion) => ListTile(title: Text(profesion),)
            ).toList()
               
          ]
        ),
      )
    );
  }
}