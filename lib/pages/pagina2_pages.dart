import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/Models/model_usuario.dart';
import 'package:statemanagement/bloc/usuario/usuario_cubit.dart';

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
              onPressed: (){
                final newUser = Usuario(
                  nombre: 'Roberto',
                  edad: 34,
                  profesiones: ['Flutter development','Kotlin develpoment']
                );
                context.read<UsuarioCubit>().seleccionarUsuario(newUser);
              },
              child: Text('Establecer Usuarios',style: Theme.of(context).textTheme.button),
              color: Theme.of(context).primaryColorLight
            ),
            MaterialButton(
              onPressed: (){ context.read<UsuarioCubit>().cambiarEdad(50);},
              child: Text('Cambiar Edad',style: Theme.of(context).textTheme.button),
              color:Theme.of(context).primaryColorLight
            ),
            MaterialButton(
              onPressed: (){context.read<UsuarioCubit>().cambiarProfecion();},
              child: Text('Añadir Profesion',style: Theme.of(context).textTheme.button),
              color: Theme.of(context).primaryColorLight
            ),
          ]
        ),
      ),
      
    );
  }
}