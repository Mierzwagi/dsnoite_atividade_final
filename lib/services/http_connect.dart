import 'dart:convert';

import 'package:flutter_pet_adopt/services/constants.dart';
import 'package:http/http.dart' as http;

class HttpConnect {
  static Future<Map<String, dynamic>> getStudent(
      {required String endpoint, required String cpf}) async {
    var url = Uri.http(serverAddress, endpoint + cpf);
    var client = http.Client();

    try {
      var response = await client.get(url);
      print("HTTP Connect==>");
      return jsonDecode(response.body);
    } catch (e) {
      print(e);
    }

    return {};
  }

  static Future<Map<String, dynamic>> postData(
      {required Map data, required String endpoint}) async {
    var url = Uri.http(serverAddress, endpoint);

//Codificar em json, para o backend entender!
    String body = json.encode(data);

    var response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: body);
    //decodificar e transf em json
    //print(response.body);
    var decodedResponse =
        jsonDecode(response.body); // TRansforma String em Json

//    print(decodedResponse);
    var result = {'data': decodedResponse, 'statusCode': response.statusCode};

    return result; //String json
  }
}
