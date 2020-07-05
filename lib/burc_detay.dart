import 'package:flutter/material.dart';
import 'package:flutterburcrehberi/burc_liste.dart';
import 'package:palette_generator/palette_generator.dart';
import 'models/burc.dart';

class BurcDetay extends StatelessWidget {
  int gelenIndex;

  BurcDetay(this.gelenIndex);

  Burc secilenBurc;

  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBurclar[gelenIndex];
    return Scaffold(
      body: CustomScrollView(
        primary: true,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,

            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi+" Burcu ve Özellikleri"),
              background: Image.asset("images/"+secilenBurc.burcBuyukResim,fit : BoxFit.cover),
              centerTitle: true,
            ),


          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child :Text(secilenBurc.burcDetayi,style: TextStyle(fontSize: 18,color:Colors.black),),
            ),
          ),
        ],
      ),
    );
  }
}
