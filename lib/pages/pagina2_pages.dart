import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/Models/model_usuario.dart';
import 'package:statemanagement/services/usuario_services.dart';

class Pagina2Page extends StatelessWidget {

  const Pagina2Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

     final usuarioService = Provider.of<UsuarioService>(context,);
    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario ? Text('${usuarioService.usuario?.nombre}') : const Text('Pagina 2'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MaterialButton(
              onPressed: (){

                final usuarioService = Provider.of<UsuarioService>(context,listen: false);
                final newUser = Usuario(
                  nombre: 'Roberto', 
                  edad: 30,
                  profesiones: ['Desarrollador kotlin','Desarrollador Flutter']
                );
                usuarioService.usuario = newUser;
              },
              child: Text('Establecer Usuarios',style: Theme.of(context).textTheme.button),
              color: Theme.of(context).primaryColorLight
            ),
            MaterialButton(
              onPressed: (){
                
                
                usuarioService.cambiaredad(45);
                

              },
              child: Text('Cambiar Edad',style: Theme.of(context).textTheme.button),
              color:Theme.of(context).primaryColorLight
            ),
            MaterialButton(
              onPressed: (){usuarioService.agregarProfesion();},
              child: Text('Añadir Profesion',style: Theme.of(context).textTheme.button),
              color: Theme.of(context).primaryColorLight
            ),
          ]
        ),
      ),
      
    );
  }
}