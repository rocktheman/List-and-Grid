import 'package:flutter/material.dart';

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
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) => Card(
              child: ListTile(title: Text(index.toString())),
            ));
  }

  Widget _contentGridView() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (BuildContext context, int index) => Card(
              child: ListTile(
                  title: Text(index.toString()),
                  onTap: () {
                    print(index.toString());
                  }),
            ));
  }
}
