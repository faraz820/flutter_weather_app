import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/loading2.dart';
class bd2 extends StatefulWidget {
  @override
  _bd2State createState() => _bd2State();
}

class _bd2State extends State<bd2> {
  String name;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.black,
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            SizedBox(
                    height:15
                  ) 
            ,
            Container(
              child: SafeArea(
                child:Row(
                children: [
                  SizedBox(width:10)
                  ,
                  Expanded(
                    child:TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter County name',
                      ),
                    onChanged: (v){
                      name=v;
                    },
                    )
                  ),
                  SizedBox(width:10)
                  ,
                  
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Load1(nameee:name);
                    }));
                    },
                    child:FaIcon(FontAwesomeIcons.search,color: Colors.blue,)
                  ),
                  SizedBox(width:20)
                ],
              ),
              ),
            ),
            SizedBox(height:10)

            ,
            Expanded(
              child:Container(
                padding:EdgeInsets.fromLTRB(10, 30, 5, 5),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Load1(nameee:'London');
                    }));
                  },
                  child:Text("LONDON",style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.w900)),
                ),
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("images/r5.png"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),
            Expanded(
              child:Container(
                padding:EdgeInsets.fromLTRB(10, 30, 5, 5),
                child:GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Load1(nameee:'Russia');
                    }));
                  },
                  child:Text("RUSSIA",style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.w900)),
                  ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("images/r2.png"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),
            Expanded(
              child:Container(
                padding:EdgeInsets.fromLTRB(10, 30, 5, 5),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Load1(nameee:'Argentina');
                    }));
                  },
                  child:Text("ARGENTINA",style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.w900)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("images/r1.png"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),
            Expanded(
              child:Container(
                padding:EdgeInsets.fromLTRB(10, 30, 5, 5),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Load1(nameee:'China');
                    }));
                  },
                  child:Text("CHINA",style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.w900)) ,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("images/r2.png"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}