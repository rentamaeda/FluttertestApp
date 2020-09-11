import 'package:flutter/material.dart';
import 'package:testapp/main.dart';

class NextPage extends StatelessWidget{
  NextPage(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {

   return Scaffold(
      appBar: AppBar(
        title: Text("rentamaedaのアクションたい！"),
        actions: <Widget>[Icon(Icons.add),Icon(Icons.share),],
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
                child: Text("戻るせい"),
              onPressed: (){
                  Navigator.pop(context);
              },
            ),
            //前の画面から値を受けとる
            Text(name),
          ],
        ),

      ),
    );
  }



}