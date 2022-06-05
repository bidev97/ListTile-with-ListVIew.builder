import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Generate some dummy data
  final List dummyList = List.generate(1000, (index) {
    return {
      "id": index,
      "title": "This is the title $index",
      "subtitle": "This is the subtitle $index"
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("_bidev"),
          centerTitle: true,
        ),
        body: SafeArea(
            child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) => Card(
            elevation: 6,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(dummyList[index]["id"].toString()),
                backgroundColor: Colors.blue,
              ),
              title: Text(dummyList[index]["title"]),
              subtitle: Text(dummyList[index]["subtitle"]),
              trailing: Icon(Icons.edit),
            ),
          ),
        )));
  }
}
