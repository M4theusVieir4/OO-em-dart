import 'dart:convert';
import 'dart:convert';

void main() {
  String json = ''' 
  {
    "usuario": "deivid@gmail.com",
    "senha": 123456,
    "permissoes": [
      "owner","admin"
    ]
  }
  ''';
  print(json);

  Map resultJson = jsonDecode(json);
  //print(resultJson.runtimeType);
  print(resultJson["permissoes"][0]);
}
