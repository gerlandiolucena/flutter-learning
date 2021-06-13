
import 'package:flutter/material.dart';
import 'package:loterr_ia/Entities/DescricaoDetalhe.dart';

class DetalheDescricaoWidget extends StatelessWidget {
  final DescricaoDetalhe descricaoDetalhe;

  const DetalheDescricaoWidget({Key key, this.descricaoDetalhe}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Expanded(child: new Text(descricaoDetalhe.descricao, textAlign: TextAlign.left), flex: 2,),
        new Expanded(child: new Text(descricaoDetalhe.detalhe, textAlign: TextAlign.right,), flex: 2,),
      ],
    );
  }
}