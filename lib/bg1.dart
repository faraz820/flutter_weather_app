import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/loading.dart';
import 'bg2.dart';
import 'geoloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as jc;

class Bg1 extends StatefulWidget {
  Bg1({this.name,this.temp,this.humadity,this.cldh,this.iconnn});
  final String name;
  final int temp;
  final int humadity;
  final String cldh;
  final String iconnn;
  @override
  _Bg1State createState() => _Bg1State();
}

class _Bg1State extends State<Bg1> {
  int temp;
  String cname;
  int humadity;
  String clddd;
  String iconn;
  int a=0;
  List icons=[FaIcon(FontAwesomeIcons.sun,color:Colors.white,size: 30),FaIcon(FontAwesomeIcons.moon,color:Colors.white,size: 30),FaIcon(FontAwesomeIcons.cloudSun,color:Colors.white,size: 30),FaIcon(FontAwesomeIcons.cloudMoon,color:Colors.white,size: 30),FaIcon(FontAwesomeIcons.cloud,color:Colors.white,size: 30),FaIcon(FontAwesomeIcons.cloudRain,color:Colors.white,size: 30),FaIcon(FontAwesomeIcons.cloudSunRain,color:Colors.white,size: 30),FaIcon(FontAwesomeIcons.cloudMoonRain,color:Colors.white,size: 30),FaIcon(FontAwesomeIcons.bolt,color:Colors.white,size: 30),FaIcon(FontAwesomeIcons.snowflake,color:Colors.white,size: 30),FaIcon(FontAwesomeIcons.cloudMeatball,color:Colors.white,size: 30)];
  @override
  void initState() {
    super.initState();
    initiliz(widget.name, widget.temp, widget.humadity,widget.cldh,widget.iconnn);
    if(iconn=='01d'){
      a=0;
    }
    else if(iconn=='01n'){
      a=1;
    }
    else if(iconn=='02d'){
      a=2;
    }
    else if(iconn=='02n'){
      a=3;
    }
    else if(iconn=='03d'|| iconn=='03n'){
      a=4;
    }
    else if(iconn=='04n' || iconn=='04d'){
      a=4;
    }
    else if(iconn=='09n' || iconn=='09d'){
      a=5;
    }
    else if(iconn=='10d'){
      a=6;
    }
    else if(iconn=='10n'){
      a=7;
    }
    else if(iconn=='11n' || iconn=='11d'){
      a=8;
    }
    else if(iconn=='13n' || iconn=='13d'){
      a=9;
    }
    else if(iconn=='50d' || iconn=='50n'){
      a=10;
    }
    
  }
  void initiliz(String namee,int tempp,int humadityy,String m,String n){
    temp=tempp;
    cname=namee;
    humadity=humadityy;
    clddd=m;
    iconn=n;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage("images/bg3.png"),
            fit:BoxFit.cover,
          ),
        ),
        child: Column(
          children:[SafeArea(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child:GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Load();
                      }));
                    },
                    child:FaIcon(FontAwesomeIcons.bars,color: Colors.white,)
                  )
                ),
                Expanded(
                  child: Text(""),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child:Text("weather app",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight:FontWeight.bold))
                ),
                Expanded(
                  child: Text(""),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child:GestureDetector(
                    onTap: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context){
                        return bd2();
                      })
                      );
                    },
                    child:FaIcon(FontAwesomeIcons.search,color: Colors.white,)
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child:Text("")
          ),
          //India
          Text('$cname',style: TextStyle(color:Colors.white,fontSize: 50,fontWeight:FontWeight.bold)),
          //Date
          Expanded(
            child:Text("")
          ),
          //degree
          Text("$temp° C",style: TextStyle(color:Colors.white,fontSize: 80,fontWeight:FontWeight.w900)),
          
          //------
          Text("-----------",style: TextStyle(color:Colors.white,fontSize: 40,fontWeight:FontWeight.w100)),
          
          //cloudy
          Text('$clddd',style: TextStyle(color:Colors.white,fontSize: 40,fontWeight:FontWeight.w700)),
          //icons
          icons[a]
          ,
          SizedBox(
            height: 100,
          ),
          Expanded(child:Text("")),
          Text('$humadity',style:TextStyle(fontSize: 20,color: Colors.white)),
          Container(
            child: Text("HUMADITY",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
          ),
          Text("")
          ]
        ),
      ),
    );
  }
}