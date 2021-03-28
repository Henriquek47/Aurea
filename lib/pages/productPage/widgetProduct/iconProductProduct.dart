import 'package:aurea/scopedModel/scopedModel.dart';
import 'package:aurea/size_app.dart';
import 'package:aurea/util.dart/listProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scoped_model/scoped_model.dart';

class IconProductProcut extends StatefulWidget {

  final int index;

  const IconProductProcut({Key key, this.index}) : super(key: key);

  @override
  _IconProductProcutState createState() => _IconProductProcutState();
}

class _IconProductProcutState extends State<IconProductProcut> {

  ScopedItens scopedItens = Modular.get<ScopedItens>();

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Stack(children: [
      Align(
        alignment: Alignment(0.8,-0.2),
        child: IconButton(
          onPressed: (){
            ingredientsdialog();
          },
          icon: Icon(Icons.receipt, size: SizeConfig.blockSizeVertical * 5, color: Colors.white70),
      )),
      Align(
        alignment: Alignment(-0.8,-0.2),
        child: IconButton(
          onPressed: (){
            info();
          },
          icon: Icon(Icons.info, size: SizeConfig.blockSizeVertical * 5, color: Colors.white70),
      )),
    ],);
  }
  void info(){
    showDialog(
     context: context, 
     builder: (context) =>   ScopedModelDescendant<ScopedItens>(builder: (context, child, model) { 
      return AlertDialog( 
       backgroundColor: model.doceDeLeiteIcon ? listDoceDeLeite[widget.index].backgroundColor
                      : model.refrescoEmPoIcon ? listRefresco[widget.index].backgroundColor
                      : model.brilhosCoberturasIcon ? listBrilhosCoberturas[widget.index].backgroundColor
                      : model.doceDeFrutaIcon ? listDoceDeFruta[widget.index].backgroundColor
                      : model.geleiasIcon ? listGeleias[widget.index].backgroundColor
                      : model.goiabadaIcon ? listGoiabada[widget.index].backgroundColor
                      : model.leiteCondensadoIcon ? listLeiteCondensado[widget.index].backgroundColor
                      : model.linhaFestaIcon ? listLinhaFesta[widget.index].backgroundColor
                      : model.molhosCondimentosIcon ? listMolhosCondimentos[widget.index].backgroundColor
                      : model.recheioCremosoIcon ? listRecheioCremoso[widget.index].backgroundColor
                      : model.recheioFornavelIcon ? listRecheioFornavel[widget.index].backgroundColor
                      : model.sobremesaCondensadaIcon ? listSobremesaCondensada[widget.index].backgroundColor
                      : 'error',
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      actions: [
        Center(
        child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: model.doceDeLeiteIcon ? listDoceDeLeite[widget.index].backgroundColor
                      : model.refrescoEmPoIcon ? listRefresco[widget.index].backgroundColor
                      : model.brilhosCoberturasIcon ? listBrilhosCoberturas[widget.index].backgroundColor
                      : model.doceDeFrutaIcon ? listDoceDeFruta[widget.index].backgroundColor
                      : model.geleiasIcon ? listGeleias[widget.index].backgroundColor
                      : model.goiabadaIcon ? listGoiabada[widget.index].backgroundColor
                      : model.leiteCondensadoIcon ? listLeiteCondensado[widget.index].backgroundColor
                      : model.linhaFestaIcon ? listLinhaFesta[widget.index].backgroundColor
                      : model.molhosCondimentosIcon ? listMolhosCondimentos[widget.index].backgroundColor
                      : model.recheioCremosoIcon ? listRecheioCremoso[widget.index].backgroundColor
                      : model.recheioFornavelIcon ? listRecheioFornavel[widget.index].backgroundColor
                      : model.sobremesaCondensadaIcon ? listSobremesaCondensada[widget.index].backgroundColor
                      : 'error',
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                model.doceDeLeiteIcon ? listDoceDeLeite[widget.index].sobre
                      : model.refrescoEmPoIcon ? listRefresco[widget.index].sobre
                      : model.brilhosCoberturasIcon ? listBrilhosCoberturas[widget.index].sobre
                      : model.doceDeFrutaIcon ? listDoceDeFruta[widget.index].sobre
                      : model.geleiasIcon ? listGeleias[widget.index].sobre
                      : model.goiabadaIcon ? listGoiabada[widget.index].sobre
                      : model.leiteCondensadoIcon ? listLeiteCondensado[widget.index].sobre
                      : model.linhaFestaIcon ? listLinhaFesta[widget.index].sobre
                      : model.molhosCondimentosIcon ? listMolhosCondimentos[widget.index].sobre
                      : model.recheioCremosoIcon ? listRecheioCremoso[widget.index].sobre
                      : model.recheioFornavelIcon ? listRecheioFornavel[widget.index].sobre
                      : model.sobremesaCondensadaIcon ? listSobremesaCondensada[widget.index].sobre
                      : 'error',
               style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 1.5))
            )
          ],
        ),
      )
      ),
       RaisedButton(
         color: model.doceDeLeiteIcon ? listDoceDeLeite[widget.index].backgroundColor
                      : model.refrescoEmPoIcon ? listRefresco[widget.index].backgroundColor
                      : model.brilhosCoberturasIcon ? listBrilhosCoberturas[widget.index].backgroundColor
                      : model.doceDeFrutaIcon ? listDoceDeFruta[widget.index].backgroundColor
                      : model.geleiasIcon ? listGeleias[widget.index].backgroundColor
                      : model.goiabadaIcon ? listGoiabada[widget.index].backgroundColor
                      : model.leiteCondensadoIcon ? listLeiteCondensado[widget.index].backgroundColor
                      : model.linhaFestaIcon ? listLinhaFesta[widget.index].backgroundColor
                      : model.molhosCondimentosIcon ? listMolhosCondimentos[widget.index].backgroundColor
                      : model.recheioCremosoIcon ? listRecheioCremoso[widget.index].backgroundColor
                      : model.recheioFornavelIcon ? listRecheioFornavel[widget.index].backgroundColor
                      : model.sobremesaCondensadaIcon ? listSobremesaCondensada[widget.index].backgroundColor
                      : 'error',
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('OK', style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 1.5)),
        ),
      ]);}));
  }

  void ingredientsdialog(){
    showDialog(
     context: context, 
     builder: (context) =>  ScopedModelDescendant<ScopedItens>(builder: (context, child, model) { 
      return AlertDialog( 
       backgroundColor: model.doceDeLeiteIcon ? listDoceDeLeite[widget.index].backgroundColor
                      : model.refrescoEmPoIcon ? listRefresco[widget.index].backgroundColor
                      : model.brilhosCoberturasIcon ? listBrilhosCoberturas[widget.index].backgroundColor
                      : model.doceDeFrutaIcon ? listDoceDeFruta[widget.index].backgroundColor
                      : model.geleiasIcon ? listGeleias[widget.index].backgroundColor
                      : model.goiabadaIcon ? listGoiabada[widget.index].backgroundColor
                      : model.leiteCondensadoIcon ? listLeiteCondensado[widget.index].backgroundColor
                      : model.linhaFestaIcon ? listLinhaFesta[widget.index].backgroundColor
                      : model.molhosCondimentosIcon ? listMolhosCondimentos[widget.index].backgroundColor
                      : model.recheioCremosoIcon ? listRecheioCremoso[widget.index].backgroundColor
                      : model.recheioFornavelIcon ? listRecheioFornavel[widget.index].backgroundColor
                      : model.sobremesaCondensadaIcon ? listSobremesaCondensada[widget.index].backgroundColor
                      : 'error',
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      actions: [
        Center(
        child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: model.doceDeLeiteIcon ? listDoceDeLeite[widget.index].backgroundColor
                      : model.refrescoEmPoIcon ? listRefresco[widget.index].backgroundColor
                      : model.brilhosCoberturasIcon ? listBrilhosCoberturas[widget.index].backgroundColor
                      : model.doceDeFrutaIcon ? listDoceDeFruta[widget.index].backgroundColor
                      : model.geleiasIcon ? listGeleias[widget.index].backgroundColor
                      : model.goiabadaIcon ? listGoiabada[widget.index].backgroundColor
                      : model.leiteCondensadoIcon ? listLeiteCondensado[widget.index].backgroundColor
                      : model.linhaFestaIcon ? listLinhaFesta[widget.index].backgroundColor
                      : model.molhosCondimentosIcon ? listMolhosCondimentos[widget.index].backgroundColor
                      : model.recheioCremosoIcon ? listRecheioCremoso[widget.index].backgroundColor
                      : model.recheioFornavelIcon ? listRecheioFornavel[widget.index].backgroundColor
                      : model.sobremesaCondensadaIcon ? listSobremesaCondensada[widget.index].backgroundColor
                      : 'error',
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                model.doceDeLeiteIcon ? listDoceDeLeite[widget.index].ingredientes
                      : model.refrescoEmPoIcon ? listRefresco[widget.index].ingredientes
                      : model.brilhosCoberturasIcon ? listBrilhosCoberturas[widget.index].ingredientes
                      : model.doceDeFrutaIcon ? listDoceDeFruta[widget.index].ingredientes
                      : model.geleiasIcon ? listGeleias[widget.index].ingredientes
                      : model.goiabadaIcon ? listGoiabada[widget.index].ingredientes
                      : model.leiteCondensadoIcon ? listLeiteCondensado[widget.index].ingredientes
                      : model.linhaFestaIcon ? listLinhaFesta[widget.index].ingredientes
                      : model.molhosCondimentosIcon ? listMolhosCondimentos[widget.index].ingredientes
                      : model.recheioCremosoIcon ? listRecheioCremoso[widget.index].ingredientes
                      : model.recheioFornavelIcon ? listRecheioFornavel[widget.index].ingredientes
                      : model.sobremesaCondensadaIcon ? listSobremesaCondensada[widget.index].ingredientes
                      : 'error',
               style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 1.5))
            )
          ],
        ),
      )
      ),
       RaisedButton(
         color: model.doceDeLeiteIcon ? listDoceDeLeite[widget.index].backgroundColor
                      : model.refrescoEmPoIcon ? listRefresco[widget.index].backgroundColor
                      : model.brilhosCoberturasIcon ? listBrilhosCoberturas[widget.index].backgroundColor
                      : model.doceDeFrutaIcon ? listDoceDeFruta[widget.index].backgroundColor
                      : model.geleiasIcon ? listGeleias[widget.index].backgroundColor
                      : model.goiabadaIcon ? listGoiabada[widget.index].backgroundColor
                      : model.leiteCondensadoIcon ? listLeiteCondensado[widget.index].backgroundColor
                      : model.linhaFestaIcon ? listLinhaFesta[widget.index].backgroundColor
                      : model.molhosCondimentosIcon ? listMolhosCondimentos[widget.index].backgroundColor
                      : model.recheioCremosoIcon ? listRecheioCremoso[widget.index].backgroundColor
                      : model.recheioFornavelIcon ? listRecheioFornavel[widget.index].backgroundColor
                      : model.sobremesaCondensadaIcon ? listSobremesaCondensada[widget.index].backgroundColor
                      : 'error',
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('OK', style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 1.5)),
        ),
      ]);}));
  }

  void recepitProduct(){
    showDialog(
     context: context, 
     builder: (context) =>  ScopedModelDescendant<ScopedItens>(builder: (context, child, model) { 
      return AlertDialog( 
       backgroundColor: model.doceDeLeiteIcon ? listDoceDeLeite[widget.index].backgroundColor
                      : model.refrescoEmPoIcon ? listRefresco[widget.index].backgroundColor
                      : model.brilhosCoberturasIcon ? listBrilhosCoberturas[widget.index].backgroundColor
                      : model.doceDeFrutaIcon ? listDoceDeFruta[widget.index].backgroundColor
                      : model.geleiasIcon ? listGeleias[widget.index].backgroundColor
                      : model.goiabadaIcon ? listGoiabada[widget.index].backgroundColor
                      : model.leiteCondensadoIcon ? listLeiteCondensado[widget.index].backgroundColor
                      : model.linhaFestaIcon ? listLinhaFesta[widget.index].backgroundColor
                      : model.molhosCondimentosIcon ? listMolhosCondimentos[widget.index].backgroundColor
                      : model.recheioCremosoIcon ? listRecheioCremoso[widget.index].backgroundColor
                      : model.recheioFornavelIcon ? listRecheioFornavel[widget.index].backgroundColor
                      : model.sobremesaCondensadaIcon ? listSobremesaCondensada[widget.index].backgroundColor
                      : 'error',
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      actions: [
 Container(
   height: 200,
   width: 300,
   child: ListView.builder(
          itemCount: listDoceDeLeite[widget.index].recipit.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.white,
              child: Image.network(listDoceDeLeite[widget.index].recipit[index]),
            );
          },
        )),
       RaisedButton(
         color: model.doceDeLeiteIcon ? listDoceDeLeite[widget.index].backgroundColor
                      : model.refrescoEmPoIcon ? listRefresco[widget.index].backgroundColor
                      : model.brilhosCoberturasIcon ? listBrilhosCoberturas[widget.index].backgroundColor
                      : model.doceDeFrutaIcon ? listDoceDeFruta[widget.index].backgroundColor
                      : model.geleiasIcon ? listGeleias[widget.index].backgroundColor
                      : model.goiabadaIcon ? listGoiabada[widget.index].backgroundColor
                      : model.leiteCondensadoIcon ? listLeiteCondensado[widget.index].backgroundColor
                      : model.linhaFestaIcon ? listLinhaFesta[widget.index].backgroundColor
                      : model.molhosCondimentosIcon ? listMolhosCondimentos[widget.index].backgroundColor
                      : model.recheioCremosoIcon ? listRecheioCremoso[widget.index].backgroundColor
                      : model.recheioFornavelIcon ? listRecheioFornavel[widget.index].backgroundColor
                      : model.sobremesaCondensadaIcon ? listSobremesaCondensada[widget.index].backgroundColor
                      : 'error',
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('OK', style: TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeVertical * 1.5)),
        ),
      ]);}));
  }
}