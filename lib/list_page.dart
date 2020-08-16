import 'package:flutter/material.dart';

List<String> nam;
List<String> link;
String fix = '';

class AppHome extends StatefulWidget {
  @override
  State<AppHome> createState() {
    return new AppState();
  }
}

class AppState extends State<AppHome> {
  void updateValue(List<String> x, List<String> y, String acc) {
    nam = x;
    link = y;
    fix = acc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 90, left: 70),
            child: Text(
              fix,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          backgroundColor: Colors.white,
          leading: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          actions: <Widget>[
            FlatButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: Text(''),
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          reverse: false,
          itemBuilder: (_, int index) => EachList(
            name: nam[index],
            imageProvider: NetworkImage(link[index]),
          ),
          itemCount: nam.length,
        ),
      ),
    );
  }
}

class EachList extends StatelessWidget {
  final String name;
  final ImageProvider imageProvider;
  EachList({this.name, this.imageProvider});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: CircleAvatar(
        backgroundImage: imageProvider,
        radius: 30,
        backgroundColor: Colors.black,
      ),
      title: Text(
        name,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
      trailing: FlatButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '/eachlist');
        },
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
        label: Text(''),
      ),
    );
  }
}
