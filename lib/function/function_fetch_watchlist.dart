import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:untitled/model/model_watchlist.dart';

Future<List<WatchList>> fetchWatchData() async {
  var url = Uri.parse('https://pbp-tugas2-vinsen.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var datas = jsonDecode(utf8.decode(response.bodyBytes));


  // melakukan konversi data json menjadi object WatchList
  List<WatchList> listWatchList = [];
  for (var data in datas) {
    if (data != null) {
      listWatchList.add(WatchList.fromJson(data));
    }
  }

  return listWatchList;
}