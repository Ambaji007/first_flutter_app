import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/temp.dart';

//String userName;
//String password;
void main() => runApp(MaterialApp(home: MyStateFullWidget(),
  routes:  <String, WidgetBuilder>{
    '/temp': (BuildContext context) => const Temp(),
  },
));

class MyStateFullWidget extends StatefulWidget {
  @override
  State createState() => _MyStatefulWidgetState();

  //State createState() => _MyStatefulWidgetState();

}


class _MyStatefulWidgetState extends State<MyStateFullWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:AppBar(
          title: Text('Log In Page'),
          foregroundColor: Color.alphaBlend(Colors.blueGrey, Colors.white),
  backgroundColor: Color.alphaBlend(Colors.yellow, Colors.white),


        ),
        body: Container(

          decoration: BoxDecoration(

            gradient:LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.6,1),
              colors: <Color>[
              Color(0xff1f005c),
                Color(0xffac255e),
                Color(0xff5b0060),
                Color(0xffffb56b),

],
              tileMode: TileMode.mirror,
            ),
            color: Colors.pinkAccent,
          ),


          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(children: [

              TextField(

                decoration: const InputDecoration(

                  border: UnderlineInputBorder(),
                  labelText: "Enter UserName",

                ),
//onChanged: ((e) => {userName = e.characters.toString()})),
              ),
              TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Enter Phone number",
                ),
                keyboardType: TextInputType.number,
// onChanged: ((e) => {phone = e.characters.toString()}
// ),
              ),
              TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Enter Password",
                ),
                keyboardType: TextInputType.number,
//onChanged: ((e) => {password = e.characters.toString()}),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.resolveWith<double?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) return 16;
                        return null;
                      }),
                ),
                onPressed: () {
                  print('Button is pressed');
                },
                child:InkWell(
                  onTap: () => {Navigator.pushNamed(context, "/temp")},
                  child: Text('Upload'),
                )

              )


            ]),

          )

    )


    );



  }



}

//void materialain() => runApp(new top_floor());
