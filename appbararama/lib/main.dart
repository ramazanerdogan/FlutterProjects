import 'package:flutter/material.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    bool varmi=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: varmi ?
            TextField(
              decoration: InputDecoration(hintText: "Arama için kelime girin"),
              onChanged: (aramasonucu){
                print("arama sonucu: $aramasonucu ");
              },
            )
            :Text("Appbar Arama"),
        actions: [
          varmi ?
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: (){
              setState(() {
                varmi=false;
              });
              },
          )
          :IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              setState(() {
                varmi=false;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Card(
                color: Colors.deepPurpleAccent,
                elevation: 10.0,
                shadowColor: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  side: BorderSide(width: 1,color: Colors.pinkAccent),
                ),
                child: Center(
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Toplam Puan",style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text("150",style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold),),

                          ],
                        ),
                      ),
                    ],
                    )
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
