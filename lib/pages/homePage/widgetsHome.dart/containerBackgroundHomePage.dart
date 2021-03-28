import 'package:aurea/scopedModel/scopedModel.dart';
import 'package:aurea/size_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ContainerBackgroundHomePage extends StatefulWidget {
  @override
  _ContainerBackgroundHomePageState createState() => _ContainerBackgroundHomePageState();
}

class _ContainerBackgroundHomePageState extends State<ContainerBackgroundHomePage> {
 
  ScopedItens scopedItens = Modular.get<ScopedItens>();

  String doceDeLeite = 'https://images.pexels.com/photos/5945557/pexels-photo-5945557.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
  String refrecoAndFruits = 'https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  String brilhosCoberturas = 'https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  String goiabada = 'https://images.pexels.com/photos/2351813/pexels-photo-2351813.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  String leiteCondensado = 'https://images.pexels.com/photos/324133/milk-splash-milk-cherry-spoon-324133.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  String linhaFesta = 'https://images.pexels.com/photos/2638026/pexels-photo-2638026.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  String molhos = 'https://images.pexels.com/photos/4676401/pexels-photo-4676401.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  String recheioCremosoFornavel = 'https://images.pexels.com/photos/960540/pexels-photo-960540.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  String sobremesaCondensada = 'https://images.pexels.com/photos/1126359/pexels-photo-1126359.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
      alignment: Alignment(0, 1),
        child: ScopedModelDescendant<ScopedItens>(
          builder: (context, child, model) {
            return Container(
            child: Opacity(
              opacity: 0.7, 
              child: Image.network(
                model.doceDeLeiteIcon ? doceDeLeite
            : model.refrescoEmPoIcon ? refrecoAndFruits
            : model.brilhosCoberturasIcon ? brilhosCoberturas
            : model.doceDeFrutaIcon ? refrecoAndFruits
            : model.geleiasIcon ? brilhosCoberturas
            : model.goiabadaIcon ? goiabada
            : model.leiteCondensadoIcon ? leiteCondensado
            : model.linhaFestaIcon ? linhaFesta
            : model.molhosCondimentosIcon ? molhos
            : model.recheioCremosoIcon ? recheioCremosoFornavel
            : model.recheioFornavelIcon ? recheioCremosoFornavel
            : model.sobremesaCondensadaIcon ? sobremesaCondensada
            : 'error', 
                fit: BoxFit.cover)),
                color: Colors.black,
                height: SizeConfig.blockSizeVertical * 80,
                width: SizeConfig.blockSizeHorizontal * 100,
    );}));
  }
}