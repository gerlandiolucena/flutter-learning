import 'package:http/http.dart' as http;
import 'package:loterr_ia/Entities/GameResult.dart';
import 'dart:convert';

class LotericasAPI {
    final baseURL = 'https://lotericas.io/api/v1/';

    Future<ResultadoJogoResponse> carregarUltimoResultado(String jogo) async {
      final finalPath = baseURL + 'jogos/'+ jogo +'/lasted';

      final response = await http.get(finalPath);

      if (response.statusCode == 200) {
        return ResultadoJogoResponse.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Não foi possível converter o resultado do jogo.');
      }
    }
}