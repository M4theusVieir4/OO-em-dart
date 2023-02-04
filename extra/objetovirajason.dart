import 'dart:convert';

void main() {
  Map mapa = {
    'nome': 'deivid',
    'pass': 123,
    'permissoes': ['owner', 'admin']
  };
  var result = jsonEncode(mapa);
  print(result);
  //print(mapa);
}
