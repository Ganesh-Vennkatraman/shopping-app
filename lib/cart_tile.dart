import 'package:flutter/material.dart';


class CartTile extends StatelessWidget {

  CartTile({this.cl});

  final Color cl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        children: <Widget>[
          FlatButton(
            child: Container(
              decoration: BoxDecoration(
                color: cl,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 150,
              width:  120,
            ),
            onPressed: () {

            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Snoopy T-Shirt',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik',
                    fontSize: 20,
                  ),
                ),
                Text(
                  'ref 079865',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Rubik',
                    fontSize: 15,
                  ),
                ),
                Text(
                  'S',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik',
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top :8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '20',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik',
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.remove_circle_outline,
                                color: Colors.grey,
                                size: 15,),
                              onPressed: () {

                              },
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.add_circle_outline,
                                color: Colors.grey,
                                size: 15,),
                              onPressed: () {

                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}