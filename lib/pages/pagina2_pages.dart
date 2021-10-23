import 'package:flutter/material.dart';
import 'package:statemanagement/Models/model_usuario.dart';
import 'package:statemanagement/services/services_usuario.dart';

class Pagina2Page extends StatelessWidget {

  const Pagina2Page({ Key? key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {

    Usuario? nuevoUsuario; 

    return StreamBuilder<Usuario>(
      stream: usuarioService.usuarioStream,
      initialData: nuevoUsuario,
      builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: snapshot.hasData ? Text('${snapshot.data!.nombre}') : const Text('Pagina 2'),
            centerTitle: true,
            backgroundColor: Theme.of(context).primaryColorLight,
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                MaterialButton(
                  onPressed: (){
                     nuevoUsuario = Usuario(nombre: 'Roberto', edad: 35);
                    
                    usuarioService.loadUser(nuevoUsuario!);
                  },
                  child: Text('Establecer Usuarios',style: Theme.of(context).textTheme.button),
                  color: Theme.of(context).primaryColorLight
                ),
                MaterialButton(
                  onPressed: (){
    
                   usuarioService.cambiarEdad(13);
    
                  },
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
    );
  }
}