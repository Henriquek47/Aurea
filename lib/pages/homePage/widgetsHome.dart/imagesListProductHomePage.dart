import 'package:aurea/pages/productPage/productPage.dart';
import 'package:aurea/scopedModel/scopedModel.dart';
import 'package:aurea/size_app.dart';
import 'package:aurea/util.dart/listProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scoped_model/scoped_model.dart';

class ImagesListProductHomePage extends StatefulWidget {
  @override
  _ImagesListProductHomePageState createState() => _ImagesListProductHomePageState();
}

class _ImagesListProductHomePageState extends State<ImagesListProductHomePage> {

  ScopedItens scopedItens = Modular.get<ScopedItens>();

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return ScopedModelDescendant<ScopedItens>(
      builder: (context, child, model){
        print(model.refrescoEmPoIcon);
        return PageView.builder(
      itemCount: 
      model.doceDeLeiteIcon ? listDoceDeLeite.length
          : model.refrescoEmPoIcon ? listRefresco.length
          : model.brilhosCoberturasIcon ? listBrilhosCoberturas.length
          : model.doceDeFrutaIcon ? listDoceDeFruta.length
          : model.geleiasIcon ? listGeleias.length
          : model.goiabadaIcon ? listGoiabada.length
          : model.leiteCondensadoIcon ? listLeiteCondensado.length
          : model.linhaFestaIcon ? listLinhaFesta.length
          : model.molhosCondimentosIcon ? listMolhosCondimentos.length
          : model.recheioCremosoIcon ? listRecheioCremoso.length
          : model.recheioFornavelIcon ? listRecheioFornavel.length
          : model.sobremesaCondensadaIcon ? listSobremesaCondensada.length
          : 'error',
      itemBuilder: (context, index) {
        return Align(
      alignment: Alignment(0, 0.5),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => ProductPage(index: index),
          ));
          
        },
        child: Image.asset(
          model.doceDeLeiteIcon ? listDoceDeLeite[index].img
          : model.refrescoEmPoIcon ? listRefresco[index].img
          : model.brilhosCoberturasIcon ? listBrilhosCoberturas[index].img
          : model.doceDeFrutaIcon ? listDoceDeFruta[index].img
          : model.geleiasIcon ? listGeleias[index].img
          : model.goiabadaIcon ? listGoiabada[index].img
          : model.leiteCondensadoIcon ? listLeiteCondensado[index].img
          : model.linhaFestaIcon ? listLinhaFesta[index].img
          : model.molhosCondimentosIcon ? listMolhosCondimentos[index].img
          : model.recheioCremosoIcon ? listRecheioCremoso[index].img
          : model.recheioFornavelIcon ? listRecheioFornavel[index].img
          : model.sobremesaCondensadaIcon ? listSobremesaCondensada[index].img
          : 'error',
      height: SizeConfig.blockSizeVertical * 35.5,),
    ));
      },
    );}); 
  }
}