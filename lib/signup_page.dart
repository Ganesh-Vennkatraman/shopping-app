import 'package:flutter/material.dart';
import 'round_button.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                  'Create your',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'account',
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
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    print(value);
                  },
                ),
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
                Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextField(
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
                    Text(
                      'By clicking this you accept to the terms & condition',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Rubik',
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
                RoundedButton(
                  color: Colors.black,
                  text: 'Sign up',
                  onPress: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
                Text(
                  '--------------------------------OR--------------------------------',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                RoundedButton(
                  color: Colors.blueAccent,
                  text: 'Sign up with facebook',
                  onPress: () {
                    Navigator.pushNamed(context, '/login');
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
