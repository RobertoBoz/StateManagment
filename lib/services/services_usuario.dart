import 'dart:async';

import 'package:statemanagement/Models/model_usuario.dart';

class _UsuarioService {

  Usuario? _usuario;

  final StreamController<Usuario> _usuarioController = StreamController<Usuario>.broadcast();

  Usuario? get usuario => _usuario;

  Stream<Usuario> get usuarioStream => _usuarioController.stream;
  
  bool get existeusuario => ( _usuario != null) ? true : false; 

  void loadUser(Usuario usuario){
    _usuario = usuario;
    _usuarioController.add(usuario);
  }

  void cambiarEdad (int edad){
    _usuario!.edad = edad;
    _usuarioController.add(_usuario!);

  }

  dispose(){
    _usuarioController.close();
  }
  


}

final usuarioService = _UsuarioService();