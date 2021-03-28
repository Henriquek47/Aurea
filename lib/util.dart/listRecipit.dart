import 'package:flutter/material.dart';

class ImageRecipitPreparo{
  final String name;
  final String img1;
  final String min;
  final List ingredienteProduct;

  ImageRecipitPreparo( this.name, this.img1, this.min, this.ingredienteProduct);
}

  List<ImageRecipitPreparo> listRecipit = [
    ImageRecipitPreparo('Cocada\nCremosa', 'https://aureaalimentos.com.br/wp-content/uploads/2018/04/cocada-cremosa.jpg', '60 min\n 20 uni',
    ['imageSobremesaCondensada/sobremesaCondensada.png'],),

    ImageRecipitPreparo('Cuca Alemã\nde Banana', 'https://aureaalimentos.com.br/wp-content/uploads/2018/04/cuca-alem-de-banana.jpg', '120 min\n 2 uni', 
    ['imageRecheioCremoso/RecheioCremosoBanana.png']),

    ImageRecipitPreparo('Bolo de Pote\nArtistico', 'https://aureaalimentos.com.br/wp-content/uploads/2018/04/bolo-de-pote-artstico-de-pscoa-3.jpg', '120 min\n 20 uni', 
    ['imageSobremesaCondensada/sobremesaCondensada.png', 'imageLeiteCondensado/LeiteCondesado.png']),

    ImageRecipitPreparo('Sunrise', 'https://aureaalimentos.com.br/wp-content/uploads/2018/03/sunrise-1.jpg', '5 min\n 250 ml', 
    ['imageRefresco/morango.png', 'imageRefresco/laranja.png']),

    ImageRecipitPreparo('Cup Cake\nChiffon', 'https://aureaalimentos.com.br/wp-content/uploads/2018/04/cup-cake-chiffon-1.jpg', '60 min\n 12 uni', 
    [])
  ];
