import 'package:flutter/material.dart';
import 'package:statemanagement/pages/pagina1_page.dart';
import 'package:statemanagement/pages/pagina2_pages.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primaryColorLight: Colors.deepPurpleAccent,
      ),
      themeMode: ThemeMode.light,
      initialRoute: 'pagina1',
      routes: {
        'pagina1': ( _ ) => const Pagina1Page(),
        'pagina2': ( _ ) => const Pagina2Page()
      },
     
    );
  }
}

