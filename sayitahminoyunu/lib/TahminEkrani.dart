// ignore_for_file: always_specify_types

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayitahminoyunu/SonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  @override
  _TahminEkraniState createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
    TextEditingController tftahmin=TextEditingController();
    int kalanhak=5;
    int rasgelesayi=0;
    String yonlendirme="";

    @override
  void initState() {
    // TODO: implement initState

      super.initState();
      rasgelesayi=Random().nextInt(101);
      print("Rastgele sayi: $rasgelesayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuc Ekrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Kalan hak : $kalanhak ",style: TextStyle(color: Colors.pink,fontSize: 30),),
            Text("Yardım: $yonlendirme",style: TextStyle(color: Colors.black54,fontSize: 24),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: tftahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                child: Text("Tahmin et"),
                color: Colors.pink,
                textColor: Colors.white,

                onPressed: (){
                  setState(() {
                    kalanhak=kalanhak-1;
                  });
                  int tahmin=int.parse(tftahmin.text);

                  if(tahmin==rasgelesayi){
                    // ignore: unused_local_variable
                    final pushReplacement = Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>SonucEkrani(sonuc:true)));
                    return;
                  }
                  if(tahmin>rasgelesayi){
                    setState(() {
                      yonlendirme="Tahmini azalt";
                    });
                  }
                  if(tahmin<rasgelesayi){
                    setState(() {
                      yonlendirme="Tahmini yükselt";
                    });
                  }
                  if(kalanhak==0)
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>SonucEkrani(sonuc:false)));
                    tftahmin.text="";
                 //
                },
              ),
            ),

          ],
        ),
      ),

    );
  }
}
