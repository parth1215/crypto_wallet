// https://api.coingecko.com/api/v3/coins/

import 'dart:convert';

import'package:http/http.dart'as http;
///comment

Future<num> getPrice(String id)async{
  try{
    var url="https://api.coingecko.com/api/v3/coins/"+id ;
    var response= await http.get(Uri.parse(url));
    var json=jsonDecode(response.body);
    var value=json['market_data']['current_price']['inr'].toString();
    return double.parse(value).toDouble();
  } catch (e){
    print(e.toString());
    return 0.0;
  }
}