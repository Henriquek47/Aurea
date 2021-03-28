import 'package:aurea/scopedModel/scopedModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scoped_model/scoped_model.dart';
import 'modulo/app_modulo.dart';


void main() {
  runApp(ModularApp(module: AppModule(),));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<ScopedItens>(
      model: ScopedItens(), 
      child: MaterialApp(  
      debugShowCheckedModeBanner: false,
      title: 'Aurea',
      theme: ThemeData(
        dialogTheme:  DialogTheme(titleTextStyle: TextStyle(color: Color.fromRGBO(1, 95, 112, 1),)),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      navigatorKey: Modular.navigatorKey,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    ));
  }
}