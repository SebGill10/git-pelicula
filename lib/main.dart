import 'package:flutter/material.dart';

// mateaap y crea todo esto  del MaterialAPP
//

import 'package:peliculas/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // quitar baner utilizamos
      // debugShowCheckedModeBanner: false,

      debugShowCheckedModeBanner: false,

      title: 'Peliculas',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
      },
    );
  }
}
