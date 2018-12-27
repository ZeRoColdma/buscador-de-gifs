import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _search;
  int _offSet = 0;

  Future<Map> _getGifs() async {
    http.Response response;

    if (_search == null) {
      response = await http.get(
          "https://api.giphy.com/v1/gifs/trending?api_key=GeAUobdXzADy3PdBIQCkiWYhUjBdguhl=&limit=25&rating=G");
    } else {
      response = await http.get(
          "https://api.giphy.com/v1/gifs/search?api_key=GeAUobdXzADy3PdBIQCkiWYhUjBdguhl&q=$_search&limit=20&offset=$_offSet&rating=G&lang=en");
    }
    return json.decode(response.body);
  }

  @override
    void initState() {
      // TODO: implement initState
      _getGifs().then((map){
        print(map);
      });
    }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
