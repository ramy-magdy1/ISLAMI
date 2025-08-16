import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

///added appbar
      home:Scaffold(
        appBar: AppBar(
          title: Text("islami"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))

          ],
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),

        ),
        body:ListView(
          children: [ Column(
            children: [
              Text("islami"),
              Text("islami"),
              Row(
                children: [
                  Text("islami"),
                  Text("islami"),
                ],
              )
            ],
          ),
          Form(child:
          Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "name",
                  prefixIcon: Icon(Icons.person),

                )
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "email",
                  prefixIcon: Icon(Icons.email),
                )

              ),
            ],
          )
          )
          ]
        )
      ),
    );
  }
}

