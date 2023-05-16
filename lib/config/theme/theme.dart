import 'package:flutter/material.dart';

class ThemeApp {
  ThemeData theme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          //backgroundColor: Colors.greenAccent,
          /*elevation: 0,
          backgroundColor: Colors.greenAccent,
          toolbarTextStyle: TextStyle(
            color: Colors.white,
          ),*/
          titleTextStyle: TextStyle(
            color: Colors.green,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
