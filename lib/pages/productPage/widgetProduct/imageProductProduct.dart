import 'package:aurea/scopedModel/scopedModel.dart';
import 'package:aurea/size_app.dart';
import 'package:aurea/util.dart/listProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scoped_model/scoped_model.dart';

class ImageProductProduct extends StatefulWidget {

  final int index;

  const ImageProductProduct({Key key, this.index}) : super(key: key);

  @override
  _ImageProductProductState createState() => _ImageProductProductState();
}

class _ImageProductProductState extends State<ImageProductProduct> {

  ScopedItens scopedItens = Modular.get<ScopedItens>();

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
      alignment: Alignment(0, -0.35),
      child: ScopedModelDescendant<ScopedItens>(builder: (context, child, model) {
        return Image.asset(
          model.doceDeLeiteIcon ? listDoceDeLeite[widget.index].img
          : model.refrescoEmPoIcon ? listRefresco[widget.index].img
          : model.brilhosCoberturasIcon ? listBrilhosCoberturas[widget.index].img
          : model.doceDeFrutaIcon ? listDoceDeFruta[widget.index].img
          : model.geleiasIcon ? listGeleias[widget.index].img
          : model.goiabadaIcon ? listGoiabada[widget.index].img
          : model.leiteCondensadoIcon ? listLeiteCondensado[widget.index].img
          : model.linhaFestaIcon ? listLinhaFesta[widget.index].img
          : model.molhosCondimentosIcon ? listMolhosCondimentos[widget.index].img
          : model.recheioCremosoIcon ? listRecheioCremoso[widget.index].img
          : model.recheioFornavelIcon ? listRecheioFornavel[widget.index].img
          : model.sobremesaCondensadaIcon ? listSobremesaCondensada[widget.index].img
          : 'error',
          height: SizeConfig.blockSizeVertical * 32.5,);
      }));
  }
}