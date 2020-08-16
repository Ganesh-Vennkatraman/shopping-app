import 'package:flutter/material.dart';
import 'round_button.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                Text(
                  'Back',
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage('https://us.123rf.com/450wm/piren/piren1703/piren170301268/74445036-the-lock-icon-on-a-black-background-.jpg?ver=6'),
                ),
                SizedBox(
                  height: 40,
                ),
                Text('Order Success!',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Rubik',
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Your order has been places successfully! For more info go to my orders.',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                RoundedButton(
                  color: Colors.black,
                  text: 'My orders',
                  onPress: () {
                    Navigator.pushNamed(context, '/main');
                  },
                ),
                RoundedButton(
                  color: Colors.black,
                  text: 'Continue shopping',
                  onPress: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/main');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
