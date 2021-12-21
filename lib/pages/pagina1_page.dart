import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/Models/model_usuario.dart';
import 'package:statemanagement/bloc/user/user_bloc.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: BlocBuilder<UserBloc, UserState>(builder: (_, state) {
        return state.existUser
            ? InformacionUsuario(user: state.user!)
            : const Center(
                child: Text('No hay usuarios'),
              );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.ac_unit),
        backgroundColor: Theme.of(context).primaryColorLight,
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({Key? key, required this.user}) : super(key: key);

  final Usuario user;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: <Widget>[
            Text(
              'General',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const Divider(),
            ListTile(
              title: Text(
                'Nombre: ${user.nombre}',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            ListTile(
              title: Text('Edad: ${user.edad}',
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            Text(
              'Profesiones',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const Divider(),
            ...user.profesiones
                .map(
                  (prof) => ListTile(
                    title: Text('Profesiones: $prof',
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                )
                .toList()
          ]),
        ));
  }
}
