import 'package:flutter/material.dart';
import 'round_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300),
          child: Container(
            color: Color(0xFF25262A),
            height: 200,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
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
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Text(
                  'Log into ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'your account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    suffix: FlatButton(
                      child: Text('Forgot?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),),
                      onPressed: () {
                        Navigator.pushNamed(context, '/forgot');
                      },
                    ),
                  ),
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: val,
                      activeColor: Colors.black,
                      onChanged: (bool) {
                        print(bool);
                        setState(() {
                          val = bool;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                RoundedButton(
                  color: Colors.black,
                  text: 'Sign in',
                  onPress: () {
                    Navigator.pushNamed(context, '/main');
                  },
                ),
                RoundedButton(
                  color: Colors.blueAccent,
                  text: 'Sign in with facebook',
                  onPress: () {
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
