
import 'package:flutter/material.dart' show ChangeNotifier;

import 'package:statemanagement/Models/model_usuario.dart';

class UsuarioService with ChangeNotifier{

  Usuario? _usuario;

  Usuario? get usuario => _usuario;

  bool get existeUsuario => (_usuario != null) ? true : false;

  set usuario( Usuario? user){
    _usuario = user;
    notifyListeners();
  }

  void cambiaredad(int edad){
    _usuario?.edad = edad;
    notifyListeners();
  }

  void borraredad(){

    _usuario = null;
    notifyListeners();
  }

  void agregarProfesion(){
    _usuario!.profesiones!.add('nueva profesion');
    notifyListeners();
  }





}