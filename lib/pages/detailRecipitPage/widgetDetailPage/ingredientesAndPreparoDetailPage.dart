import 'package:aurea/size_app.dart';
import 'package:flutter/material.dart';

class IngredientesAndPreparoDetailPage extends StatefulWidget {
  @override
  _IngredientesAndPreparoDetailPageState createState() => _IngredientesAndPreparoDetailPageState();
}

class _IngredientesAndPreparoDetailPageState extends State<IngredientesAndPreparoDetailPage> {

  bool ingredientes = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Stack(
      children: [
        Align(
          alignment: Alignment(0.8, 0.2),
          child: GestureDetector(
            onTap: (){
              dialogo();
            },
            child: Container(
            alignment: Alignment.center,
            child: Text('Preparo', style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 2.5)),
            height: SizeConfig.blockSizeVertical * 8,
            width: SizeConfig.blockSizeHorizontal * 40,
            decoration: BoxDecoration(
            color: Color.fromRGBO(249, 156, 88, 1),
            borderRadius: BorderRadius.circular(20)
          ),
        ))),
        Align(
          alignment: Alignment(-0.8, 0.2),
          child: GestureDetector(
            onTap: (){
              setState(() {
           if(ingredientes == false){
            return ingredientes = true;
          }else if(ingredientes == true){
            return ingredientes = false;
          } });
            },
            child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
            height: ingredientes ? SizeConfig.blockSizeVertical * 40 : SizeConfig.blockSizeVertical * 8,
            width: ingredientes ? SizeConfig.blockSizeHorizontal * 65 : SizeConfig.blockSizeHorizontal * 40,
            child: Container(
            alignment: Alignment.center,
            child: ingredientes ?  
              ListView(children: [
                Padding(
                padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Text(texto, style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 1.5)))])
            : Padding(
                padding: EdgeInsets.all(10),
                child: Text('Ingredientes', style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 2.5))),
            decoration: BoxDecoration(
            color: ingredientes? Color.fromRGBO(252, 82, 82, 1) : Color.fromRGBO(249, 156, 88, 1),
            borderRadius: BorderRadius.circular(20)
          ),
        )))),
    ]);
  }

  void dialogo(){
    showDialog(
     context: context, 
     builder: (context) =>  AlertDialog( 
       backgroundColor: Color.fromRGBO(252, 82, 82, 1),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      actions: [
        Center(
        child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color.fromRGBO(252, 82, 82, 1),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(preparo, style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 1.5))
            )
          ],
        ),
      )
      ),
       RaisedButton(
         color: Color.fromRGBO(252, 82, 82, 1),
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('OK', style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 1.5)),
        ),
      ]));
  }

  String texto = 'INGREDIENTES Massa\n • 3 gemas\n • 3 claras\n • 60g de açúcar peneirado\n • 40ml de óleo\n • 40ml de leite\n • 50g de farinha de trigo\n • 10g de amido de milho\n • 1 colher de sopa de fermento em pó\n \n Recheio\n • 100g de CREME CONFEITEIRO ÁUREA\n • 250ml de leite\n • 200g de DOCE DE SORO DE LEITE COM CHOCOLATE ÁUREA\n \n Cobertura\n • 300ml de creme de leite fresco (nata)\n • 200g de DOCE DE SORO DE LEITE COM CHOCOLATE ÁUREA';
  String preparo = 'MODO DE PREPARO\n1- Na panela coloque todos os ingredientes, leve ao fogo para cozinhar.\n2- Quando começar a desgrudar da panela retire do fogo e transfira para uma superfície de mármore.\n3- Mexa bem até que a massa da cocada comece a açucarar e fique morna\n4- Faça as cocadinhas e leve à geladeira para esfriar\n';

}