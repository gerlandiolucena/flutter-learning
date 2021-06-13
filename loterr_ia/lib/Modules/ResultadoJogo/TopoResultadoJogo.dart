import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loterr_ia/Entities/DescricaoDetalhe.dart';
import 'package:loterr_ia/Modules/Shared/DescricaoDetalheWidget.dart';

class TopoResultadoJogoWidget extends StatelessWidget {

  final List<DescricaoDetalhe> detailDescription;

  const TopoResultadoJogoWidget({Key key, this.detailDescription}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemBuilder: (context, position) {
            return  DetalheDescricaoWidget(descricaoDetalhe: detailDescription[position]);
          },
          itemCount: detailDescription.length,
        )
    );
  }
}

