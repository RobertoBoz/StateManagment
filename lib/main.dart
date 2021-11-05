import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/pages/pagina1_page.dart';
import 'package:statemanagement/pages/pagina2_pages.dart';
import 'package:statemanagement/services/usuario_services.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsuarioService())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         primaryColorLight: Colors.deepPurpleAccent,
         textTheme:const TextTheme(
          bodyText1: TextStyle(fontSize: 15),
          subtitle1: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          button: TextStyle(color: Colors.white)
        ),
         
        ),
      
        themeMode: ThemeMode.light,
        initialRoute: 'pagina1',
        routes: {
          'pagina1': ( _ ) => const Pagina1Page(),
          'pagina2': ( _ ) => const Pagina2Page()
        },
       
      ),
    );
  }
}

