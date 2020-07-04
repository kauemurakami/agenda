import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

class ApiClient {

final http.Client httpClient;
ApiClient({@required this.httpClient});




}