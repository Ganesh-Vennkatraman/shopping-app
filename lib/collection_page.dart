import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class Collection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Carousel(
          images: [
            CarouselItem(item:'Urban Collection', sentence: 'Discover the Urban Collection to spend the summer with great style.',img: 'https://i.pinimg.com/564x/09/40/33/09403385e8eaf5af5cb424894d2240dd.jpg',),
            CarouselItem(item:'Urban Collection',sentence: 'Discover the Urban Collection to spend the summer with great style.',img: 'https://i.pinimg.com/564x/09/40/33/09403385e8eaf5af5cb424894d2240dd.jpg'),
            CarouselItem(item:'Urban Collection',sentence: 'Discover the Urban Collection to spend the summer with great style.',img: 'https://i.pinimg.com/564x/09/40/33/09403385e8eaf5af5cb424894d2240dd.jpg'),
          ],
          dotBgColor: Colors.transparent,
          autoplay: false,
          dotColor: Colors.black,
          dotSize: 5,
          dotPosition: DotPosition.bottomRight,
          dotHorizontalPadding: 50,
          indicatorBgPadding: 5,
        ),
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {

  CarouselItem({this.item,this.sentence,this.img});

  final String item;
  final String sentence;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '2019',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20
                  ),
                ),
                Text(
                  item,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Rubik',
                  ),
                ),
                Text(
                  sentence,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Rubik',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                OutlineButton(
                  child: Container(
                    width: 250,
                    height: 50,
                    child: Center(
                      child: Text(
                        "See Collection",
                        style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/winter');
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://i.pinimg.com/564x/09/40/33/09403385e8eaf5af5cb424894d2240dd.jpg'),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}
