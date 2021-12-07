import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  get itemBuilder => null;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
                backgroundColor: Colors.white70,
                appBar:
                    AppBar(bottom: TabBar(tabs: [Text("List"), Text('Grid')])),
                body: TabBarView(
                  children: [_contentList(), _contentGridView()],
                ))));
  }

  Widget _contentList() {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) => Card(
            child: ListTile(
                title: Text(index.toString()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => data(index)),
                  );
                })));
  }

  Widget _contentGridView() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) => Card(
              child: ListTile(
                  title: Text(index.toString()),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => data(index)),
                    );
                  }),
            ));
  }
}
