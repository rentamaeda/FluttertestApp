import 'package:flutter/material.dart';
import 'package:testapp/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("rentamaedaのアクションたい！"),
        actions: <Widget>[Icon(Icons.add),Icon(Icons.share),],
      ),
      body: Container(
        height: double.infinity,
        color: Colors.amber,
        child: Padding(
          //padding ポジション
          padding:  const EdgeInsets.all(11.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              //RaisedButtonボタン
              RaisedButton(
                child: Text("次へ"),
                onPressed: (){
                  //押したら何か変化
                  Navigator.push(
                  context,
                      MaterialPageRoute(
                        //次の画面へ値を渡す
                        builder: (context) => NextPage("ジーコさん"),
                      )
                  );
                },
              ),
              FlatButton(
                child: Text("まだまだ"),
                onPressed: (){
                  //押したら何か変化
                },
              ),
            ],
          ),
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
