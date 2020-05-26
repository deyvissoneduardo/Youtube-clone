import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtubeclone/model/Video.dart';

const CHAVE_API_YOUTUBE = "AIzaSyB1i_ZmQrOMI0u-8QiXG0h0QHltuCRaUIA";
const ID_CANAL = "UCVHFbqXqoYvEWM1Ddxl0QDg";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  Future<List<Video>> pesquisar(String pesquisa) async {
    http.Response response = await http.get(URL_BASE +
        'search'
            '?part=snippet'
            '&type=video'
            '&maxResults=20'
            '&order=date'
            '&key=$CHAVE_API_YOUTUBE'
            '&channelId=$ID_CANAL'
            '&q=$pesquisa');
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<Video> videos = dadosJson['items'].map<Video>((map) {
        return Video.forJson(map);
        // return Video.converteJson(map);
      }).toList();
      return videos;
      /* for( var video in dadosJson['items']){
        print("result: " + video.toString());
      }*/
    } else {
      print("error ao carregar videos");
    }
  }
}
