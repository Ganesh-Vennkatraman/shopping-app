import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'round_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/free-photo/beautiful-young-woman-with-shopping-bags-using-her-smart-phone-yellow-background_50889-43.jpg?size=626&ext=jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Positioned(
                child: AppBar(
                  title: Padding(
                    padding: EdgeInsets.only(left: 260),
                    child: Text('SIGN IN'),
                  ),
                  backgroundColor: Colors.transparent,
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Ideal store for your shopping',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.black,
                      height: 1,
                      width: 250,
                    ),
                    RoundedButton(
                      color: Colors.grey,
                      text: 'Sign up with email',
                      onPress: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                    ),
                    RoundedButton(
                      color: Colors.blueAccent,
                      text: 'Continue with facebook',
                      onPress: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
