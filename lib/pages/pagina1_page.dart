import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/Models/model_usuario.dart';
import 'package:statemanagement/bloc/usuario/usuario_cubit.dart';

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
      body: const BodyScafold(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.ac_unit),
        backgroundColor: Theme.of(context).primaryColorLight,
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

class BodyScafold extends StatelessWidget {
  const BodyScafold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuarioCubit, UsuarioState>(
      builder: (context, state) {
  

        switch(state.runtimeType){
          case UsuarioInitial:
            return const Center(child: Text('No hay información del usuario'));
          break;
          case UsuarioActivo:
            return InformacionUsuario(usuario:(state as UsuarioActivo).usuario);
          break;
          default:
          return const Center(child: Text('Estado no reconocido '),);


        }
      
        
      },
    );
  }
}

class InformacionUsuario extends StatelessWidget {

  final Usuario usuario;

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
            ListTile(title: Text('Edad: ${usuario.edad}',style:Theme.of(context).textTheme.bodyText1),),
            Text('Profesiones', style: Theme.of(context).textTheme.subtitle1,  ),
            const Divider(),
            
            ...usuario.profesiones!.map(
              (profecion) => ListTile(
                title: Text('Profesiones: $profecion',
                style:Theme.of(context).textTheme.bodyText1),),
             ).toList()

          ]
        ),
      )
    );
  }
}