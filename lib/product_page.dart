import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/Lists.dart';
import 'list_page.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    label: Text(''),
                  ),
                  SizedBox(width: 130,),
                  FlatButton.icon(
                      onPressed: null,
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.black,
                      ),
                      label: Text(''),),
                  FlatButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.search),
                      label: Text(''))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ContainerButton(
                text: 'New In',
                imageProvider: NetworkImage(
                    'https://i.pinimg.com/564x/09/40/33/09403385e8eaf5af5cb424894d2240dd.jpg'),
                onPress: () {
                  Navigator.pushNamed(context, '/list');
                  AppState().updateValue(names, pics, 'New In');
                },
              ),
              SizedBox(
                height: 20,
              ),
              ContainerButton(
                text: 'Clothing',
                imageProvider: NetworkImage(
                    'https://previews.123rf.com/images/yuliialypai/yuliialypai1805/yuliialypai180500078/102654925-summer-women-s-clothing-and-accessories-on-a-brown-background.jpg'),
                onPress: () {
                  Navigator.pushNamed(context, '/list');
                  AppState().updateValue(names, pics, 'Clothing');
                },
              ),
              SizedBox(
                height: 20,
              ),
              ContainerButton(
                text: 'Shoes',
                imageProvider: NetworkImage(
                    'https://st3.depositphotos.com/1177973/12883/i/950/depositphotos_128834036-stock-photo-grey-shoes-on-grey-background.jpg'),
                onPress: () {
                  Navigator.pushNamed(context, '/list');
                  AppState().updateValue(names, pics, 'Shoes');
                },
              ),
              SizedBox(
                height: 20,
              ),
              ContainerButton(
                text: 'Accessories',
                imageProvider: NetworkImage(
                    'https://c8.alamy.com/comp/PNK2K8/autumn-female-outfit-set-of-clothes-shoes-and-accessories-on-brown-background-copy-space-PNK2K8.jpg'),
                onPress: () {
                  Navigator.pushNamed(context, '/list');
                  AppState().updateValue(names, pics, 'Accessories');
                },
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerButton extends StatelessWidget {
  ContainerButton({this.text, this.imageProvider, this.onPress});

  final String text;
  final ImageProvider imageProvider;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 100),
        height: 150,
        width: double.infinity,
        child: Text(
          text,
          style:
              TextStyle(color: Colors.white, fontFamily: 'Rubik', fontSize: 25),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      onPressed: onPress,
    );
  }
}
