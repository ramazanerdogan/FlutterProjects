import 'package:flutter/material.dart';
import 'package:sayitahminoyunu/TahminEkrani.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  Anasayfa({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            Text("Tahmin Oyunu",style: TextStyle(color: Colors.black54,fontSize: 36),),
            Image.asset("resimler/zar.png"),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                child: Text("OYUNA BAŞLA"),
                color: Colors.blue,
                textColor: Colors.white,

                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>TahminEkrani()));
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
