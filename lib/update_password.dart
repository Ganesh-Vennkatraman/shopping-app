import 'package:flutter/material.dart';
import 'round_button.dart';

class UpdatePassword extends StatefulWidget {
  @override
  _UpdatePasswordState createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300),
          child: Container(
            color: Colors.white,
            height: 200,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
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
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Update your password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80,vertical: 25),
                  child: Text(
                    'PLease enter you password',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'password',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextField(
                  obscureText: true,
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'confirm password',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextField(
                  obscureText: true,
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RoundedButton(
                  color: Colors.black,
                  text: 'Reset password',
                  onPress: () {
                    Navigator.pushNamed(context, '/hello');
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
