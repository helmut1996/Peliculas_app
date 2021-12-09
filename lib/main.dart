import 'package:flutter/material.dart';
import 'package:peliculas_app/src/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peliculas App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_) => ScreenHome(),
        'details': (_)=> ScreenDetails(),
      },
      theme: ThemeData.light().copyWith(
     appBarTheme: AppBarTheme(
       color: Colors.red,
      ),
    ),
    );
  }
}