import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _search;

  _getSearch() async{
    http.Response response;

    if (_search == null){
      response = await http.get("https://api.giphy.com/v1/gifs/search?api_key=&q=dogs&limit=25&offset=75&rating=G&lang=en");
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}