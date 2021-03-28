import 'package:aurea/scopedModel/scopedModel.dart';
import 'package:aurea/size_app.dart';
import 'package:aurea/util.dart/listProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scoped_model/scoped_model.dart';

class ContainerBackgroundProductPage extends StatefulWidget {

  final int index;

  const ContainerBackgroundProductPage({Key key, this.index}) : super(key: key);

  @override
  _ContainerBackgroundProductPageState createState() => _ContainerBackgroundProductPageState();
}

class _ContainerBackgroundProductPageState extends State<ContainerBackgroundProductPage> {

  ScopedItens scopedItens = Modular.get<ScopedItens>();

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
      alignment: Alignment(0, -1),
      child: ScopedModelDescendant<ScopedItens>(builder: (context, child, model) {
        return Container(
            height: SizeConfig.blockSizeVertical * 60,
            decoration: BoxDecoration(
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
              borderRadius: BorderRadius.only( bottomRight: Radius.circular(300), bottomLeft: Radius.circular(300)),
            ));}));
  }
}