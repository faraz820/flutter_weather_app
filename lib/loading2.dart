import 'package:flutter/material.dart';
import 'geoloc.dart';
import 'bg1.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Load1 extends StatefulWidget {
  Load1({this.nameee});
  String nameee;
  @override
  _Load1State createState() => _Load1State();
}

class _Load1State extends State<Load1> {
  @override
  String namee;
  String cldhz;
  String icon;
  int temp;
  int humadity;
  void initState() {
    super.initState();
    ss();
  }
  void ss() async{
    Geo c=Geo(namee:widget.nameee);
    await c.api2();
    namee=c.countryname;
    double temp1=c.temp1;
    temp=temp1.toInt();
    humadity=c.humadity;
    cldhz=c.clodyhaze;
    icon=c.icon;
    Navigator.push(context, MaterialPageRoute(builder: 
    (context){
      return Bg1(name: namee,temp: temp,humadity: humadity,cldh: cldhz,iconnn: icon,);
    }
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
       Center(
        child:SpinKitDoubleBounce(
              color: Colors.grey,
              size: 50.0,
          ),
      )
    );
  }
}