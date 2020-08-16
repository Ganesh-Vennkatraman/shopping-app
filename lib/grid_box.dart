import 'package:flutter/material.dart';

class GridBox extends StatelessWidget {
  GridBox({@required this.url, @required this.onPress});

  final String url;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            child: FlatButton(
              onPressed: onPress,
              child: Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(url),
                  ),
                ),
              ),
            ),
          ),
          Text(
            'Snoopy shirt',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            '24',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
