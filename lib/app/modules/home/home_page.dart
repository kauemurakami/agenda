import 'package:agenda/app/data/provider/app_provider.dart';
import 'package:agenda/app/data/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {

//repository injection
final UserRepository repository = UserRepository(apiClient: ApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('HomePage')),

    body: Container(
     
      ),
    );
  }
}