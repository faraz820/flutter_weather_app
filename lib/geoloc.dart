import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as jc;
import 'loading.dart';
class Geo{
  Geo({this.namee});
  String namee;
  var longitude;
  var lantitude;
  var maincountryname;
  var humadity;
  var countryname;
  var icon;
  var temp1;
  var clodyhaze;
  Future<void> calc() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy:LocationAccuracy.low);
    longitude=position.longitude;
    lantitude=position.latitude;
  }
  Future<void> api() async{
    http.Response response = await http.get('http://api.openweathermap.org/data/2.5/weather?lat=$lantitude&lon=$longitude&appid=de44d9132aad7e35ad2c79890a94cf86&units=metric');
    var data=response.body;
    clodyhaze=jc.jsonDecode(data)['weather'][0]['main'];
    temp1=jc.jsonDecode(data)['main']['temp'];
    icon=jc.jsonDecode(data)['weather'][0]['icon'];
    humadity=jc.jsonDecode(data)['main']['humidity'];
    countryname=jc.jsonDecode(data)['sys']['country'];
    http.Response response2 = await http.get('https://restcountries.eu/rest/v2/alpha/$countryname');
    var data2=response2.body;
    maincountryname=jc.jsonDecode(data2)['name'];
  }
  Future<void> api2() async{
    http.Response response = await http.get('http://api.openweathermap.org/data/2.5/weather?q=$namee&appid=de44d9132aad7e35ad2c79890a94cf86&units=metric');
    var data=response.body;
    clodyhaze=jc.jsonDecode(data)['weather'][0]['main'];
    temp1=jc.jsonDecode(data)['main']['temp'];
    icon=jc.jsonDecode(data)['weather'][0]['icon'];
    humadity=jc.jsonDecode(data)['main']['humidity'];
    countryname=jc.jsonDecode(data)['name'];
  }
}