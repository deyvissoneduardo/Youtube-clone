import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_API_YOUTUBE = "AIzaSyB1i_ZmQrOMI0u-8QiXG0h0QHltuCRaUIA";
const ID_CANAL = "UCVHFbqXqoYvEWM1Ddxl0QDg";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api{

  pesquisar(String pesquisa) async {
    http.Response response = await http.get(
      URL_BASE + 'search'
      '?part=snippet'
      '&type=video'
      '&maxResults=20'
      '&order=date'
      '&key=$CHAVE_API_YOUTUBE'
      '&channelId=$ID_CANAL'
      '&q=$pesquisa'
    );
    if( response.statusCode == 200 ){

      Map<String, dynamic> dadosJson = json.decode( response.body );
      print("result: "+ dadosJson['items'][0]['snippet']['title'].toString());
    }else{
      print("error");
    }
  }
}