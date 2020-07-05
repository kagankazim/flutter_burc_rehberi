import 'package:flutter/material.dart';
import 'package:flutterburcrehberi/burc_detay.dart';
import 'package:flutterburcrehberi/burc_liste.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/burcListesi",

      routes:{
        "/" :(context)=> BurcListesi(),
        "/burcListesi":(context)=> BurcListesi(),
      },
      onGenerateRoute: (RouteSettings settings){
       List<String> pathElemanlari = settings.name.split("/");
       if(pathElemanlari[1]=="burcDetay"){
         return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
       }
        return null;
      },
      title: "Burç Rehberi",
      theme:  ThemeData(
        primarySwatch: Colors.orange
      ),
    );
  }

}