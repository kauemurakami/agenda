import 'package:agenda/app/data/provider/app_provider.dart';
import 'package:agenda/app/data/repository/empresa_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ClientesScreen extends StatelessWidget {

//repository injection
final EmpresaRepository repository = EmpresaRepository(apiClient: ApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(

    body: Container(
      child: Text('clientes'),
      ),
    );
  }
}