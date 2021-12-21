import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/Models/model_usuario.dart';

import 'package:statemanagement/bloc/user/user_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userbloc = BlocProvider.of<UserBloc>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Center(
        child: Column(children: <Widget>[
          MaterialButton(
              onPressed: () {
                userbloc.add(ActivateUser(Usuario(
                    nombre: 'Roberto', edad: 24, profesiones: ['Fulstack'])));
              },
              child: Text('Establecer Usuarios',
                  style: Theme.of(context).textTheme.button),
              color: Theme.of(context).primaryColorLight),
          MaterialButton(
              onPressed: () {
                userbloc.add(ChangeUserAge(28));
              },
              child: Text('Cambiar Edad',
                  style: Theme.of(context).textTheme.button),
              color: Theme.of(context).primaryColorLight),
          MaterialButton(
              onPressed: () {
                userbloc.add(AddProfetion('Profecion 1'));
              },
              child: Text('Añadir Profesion',
                  style: Theme.of(context).textTheme.button),
              color: Theme.of(context).primaryColorLight),
        ]),
      ),
    );
  }
}
