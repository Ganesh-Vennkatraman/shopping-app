import 'package:flutter/material.dart';
import 'round_button.dart';
import 'cart_tile.dart';

class Cart extends StatelessWidget {

  List<Color> cls = [
    Colors.black,
    Colors.grey,
    Colors.green,
    Colors.red,
  ];
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
                'CART',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 20,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemBuilder: (context,index){
                return CartTile(cl: cls[index],);
              },
              itemCount: cls.length,),
            ),
            Container(
              color: Colors.grey,
              height: 1,
              width: double.infinity,
            ),
            FlatButton(
              child: Text(
                'Do you have a promo code?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik',
                ),
              ),
              onPressed: () {

              },
            ),
            Container(
              color: Colors.grey,
              height: 1,
              width: double.infinity,
            ),
            RoundedButton(
              color: Colors.black,
              text: 'BUY FOR 100',
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}


