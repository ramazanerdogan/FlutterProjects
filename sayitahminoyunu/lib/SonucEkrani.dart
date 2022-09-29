import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  bool sonuc;


  SonucEkrani({this.sonuc});

  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuc Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            widget.sonuc ? Image.asset("resimler/mutlu.png"):Image.asset("resimler/uzgun.png"),
            Text(widget.sonuc ?"KAZANDINIZ":"KAYBETTİNİZ",style: TextStyle(color: Colors.black54,fontSize: 36),),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                child: Text("TEKRAR DENE"),
                color: Colors.blue,
                textColor: Colors.white,

                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
