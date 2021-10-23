
class Usuario {

  String? nombre;
  int? edad;
  List<String>? profesiones;
  
  Usuario({required this.nombre, this.edad, this.profesiones});

  Usuario copywhit(nombre, edad, profesiones)=> 
  Usuario(nombre: this.nombre ?? nombre , edad: this.edad ?? edad,profesiones: this.profesiones ?? profesiones  );

  
}