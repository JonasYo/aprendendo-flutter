import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Pagina Inicial'),
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

  get backgroundColor => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('Me', textAlign: TextAlign.center)),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://timedotcom.files.wordpress.com/2017/12/terry-crews-person-of-year-2017-time-magazine-2.jpg?w=800&quality=85',
              width: 150,
            ),
            SizedBox(
              width: 160,
              height: 20,
            ),
            Card(
              child: ListTile(
                // leading: Icon(Icons.add_a_photo),
                title: Text(
                  'Name: Terry Crews',
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  'Phone: 41 98888-8888',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.cyan,
        onPressed: () => {},
      ),
    );
  }
}
