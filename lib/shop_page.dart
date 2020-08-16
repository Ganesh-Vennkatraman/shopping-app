import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'round_button.dart';

class ShopPage extends StatelessWidget {
  ShopPage({this.place, this.image});

  final String place;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          color: Colors.white,
          height: 200,
          width: double.infinity,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                place,
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding:
                EdgeInsets.only(top: 120, bottom: 20, left: 300, right: 20),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image: NetworkImage(image),
              ),
            ),
            child: CircleAvatar(
              radius: 5,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Monday',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Rubik'),
                ),
                Text(
                    '8:00 - 7:30',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Tuesday',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Rubik'),
                ),
                Text(
                  '8:00 - 7:30',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Wednesday',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Rubik'),
                ),
                Text(
                  '8:00 - 7:30',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Thursday',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Rubik'),
                ),
                Text(
                  '8:00 - 7:30',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Friday',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Rubik'),
                ),
                Text(
                  '8:00 - 7:30',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Saturday',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Rubik'),
                ),
                Text(
                  '8:00 - 7:30',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 0.5,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '22 Avenue des $place,',
                  style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                   fontFamily: 'Rubik',
                   fontSize: 15
                  ),
                ),
                Text(
                  '75008 Paris',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RoundedButton(
                  color: Colors.black,
                  text: 'Go to shop',
                  onPress: () {},
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  child: Icon(Icons.phone,color: Colors.white,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
