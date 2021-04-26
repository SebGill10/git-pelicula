import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:peliculas/src/models/pelicula.models.dart';

class PeliculasProvider {
  String _apikey = 'e40dc271aebd640cae145834a4146dd3';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Pelicula>> getEnCines() async {
    // construir el url para llamar el api

    final url = Uri.https(_url, '3/movie/now_playing',
        {'api_key': _apikey, 'language': _language});

    //llamamos el http
    final respuesta = await http.get(url);
    final decodeData = json.decode(respuesta.body);

    final peliculas = new Peliculas.fromJsonList(decodeData[
        'results']); // se ecnargara de barrere y generar las peliculas en el json

    return peliculas.itemsPelicula;
  }
}
