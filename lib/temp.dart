import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  const Temp({super.key});

  @override
  Widget build(BuildContext context) {
    var blue;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("my login page "),
        ),
        body: Center(
          child: Card(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const ListTile(
                  title:  Text('This id my Log in page'),
                  leading: Icon(Icons.album),
                ),
                Card(


                  child: Container(


                      child: ElevatedButton(



                        style:  ButtonStyle(



                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                        ),
                        onPressed: () { Navigator.pop(context , "/main"); },
                        child: Text("You are in your login page!!!"),

                      )

                  ),
                ),

                const SizedBox(
                  width: 60,
                )
              ],

            ),

          )







        ),
      ),
    );
  }
}
