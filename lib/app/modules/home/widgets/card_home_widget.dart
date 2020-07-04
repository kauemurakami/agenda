import 'package:agenda/app/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CustomCardHomeWidget extends StatelessWidget {
//repository injection
//final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));
final String text;

CustomCardHomeWidget({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: Colors.purple,
      child: Container(
          height: MediaQuery.of(context).size.height / 3.5,
          width: MediaQuery.of(context).size.width - 10,
          padding: EdgeInsets.all(8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              this.text,
              style: subtitulo,
            ),
            Flexible(              
              child: FractionallySizedBox(
                heightFactor: 0.7,
                widthFactor: 1.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:405,
                    itemBuilder: (context, index) {
                      return Text('a');
                    }),
              ),
            ),
          ])),
    );
  }
}
