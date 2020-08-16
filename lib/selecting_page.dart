import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'round_button.dart';
import 'grid_box.dart';

class Selection extends StatefulWidget {
  @override
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  List<Color> circleColor = [
    Colors.brown,
    Colors.black,
    Colors.green,
    Colors.yellow,
  ];

  var y = 0;
  var z = 0;

//  double iconSize = 0;

  List<double> iconSize = [
    0,
    0,
    0,
    0,
  ];

  List<Color> boxColor = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  List<String> size = ['XS', 'S', 'M', 'L', 'XL'];

  List<String> urls = [
    'https://i1.wp.com/fashionvilas.com/wp-content/uploads/2015/11/Gul-Ahmed-Ideas-Winter-Collection-For-Young-Girls-2015-16-5.jpg?resize=960%2C960&ssl=1',
    'https://www.dhresource.com/0x0/f2/albu/g3/M00/E1/AB/rBVaHFRbaL-APAXjAAIcb4ofx8g170.jpg',
    'https://www.stylesgap.com/wp-content/uploads/2017/10/Kayseria-Best-Winter-Dresses-Collection-2018-for-Women-Little-Girls-8.jpg',
    'https://img2.junaroad.com/uiproducts/16656622/pri_175_p-1571138066.jpg',
    'https://queenspark.com/wp-content/gallery/winter-collection/Winter_10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 400,
              floating: true,
              pinned: true,
              flexibleSpace: Container(
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    Expanded(
                      child: Carousel(
                        boxFit: BoxFit.contain,
                        images: [
                          NetworkImage(
                              'https://i.pinimg.com/originals/65/e3/c8/65e3c800f67e2420bc495ac2406ece69.png'),
                          NetworkImage(
                              'https://i.pinimg.com/originals/d6/e2/b9/d6e2b9819bc2329dcc7ae90fd98136dd.jpg'),
                          NetworkImage(
                              'https://i.pinimg.com/originals/30/92/7d/30927d4c912be19fa93c0da72aadaed8.jpg'),
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
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '60',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Original Black Suit',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        height: 30,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: circleColor[index],
                              child: Center(
                                child: IconButton(
                                  alignment: Alignment.center,
                                  icon: Icon(Icons.done,
                                    color: Colors.white,
                                    size: iconSize[index],),
                                  onPressed: (){
                                    var x = index;
                                    if (x != y) {
                                      setState(() {
                                        iconSize[index] = 15;
                                        iconSize[y] = 0;
                                        y = x;
                                      });
                                    } else {
                                      setState(() {
                                        if (iconSize[index] == 15) {
                                          iconSize[index] = 0;
                                        } else {
                                          iconSize[index] = 15;
                                        }
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                          itemCount: circleColor.length,
                        ),
                      ),
                      Container(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: OutlineButton(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              color: Colors.white,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    size[index],
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: boxColor[index],
                                ),
                              ),
                              onPressed: () {
                                var j = index;
                                if (j != z) {
                                  setState(() {
                                    boxColor[index] = Colors.black;
                                    boxColor[z] = Colors.white;
                                    z = j;
                                  });
                                } else {
                                  setState(() {
                                    if (boxColor[index] == Colors.white) {
                                      boxColor[index] = Colors.black;
                                    } else {
                                      boxColor[index] = Colors.white;
                                    }
                                  });
                                }
                              },
                            ),
                          ),
                          itemCount: size.length,
                        ),
                      ),
                      Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ''
                        'It is a very good dress with a silky material.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                      Center(
                        child: RoundedButton(
                          color: Colors.black,
                          text: 'Add to Cart',
                          onPress: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Container(
                                      alignment: Alignment.topRight,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.close,
                                          color: Colors.black,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                    content: Container(
                                      height: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          CircleAvatar(
                                            radius: 50,
                                            backgroundColor: Colors.black,
                                            child: Icon(
                                              Icons.shopping_basket,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                          ),
                                          Text(
                                            'Success',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Rubik',
                                              fontSize: 30,
                                            ),
                                          ),
                                          Text(
                                            '1 Product has been added to your cart',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontFamily: 'Rubik',
                                            ),
                                          ),
                                          RoundedButton(
                                            color: Colors.black,
                                            text: 'CHECKOUT',
                                            onPress: () {
                                              Navigator.pop(context);
                                              Navigator.pushNamed(
                                                  context, '/checkout');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: OutlineButton(
                          child: Container(
                            width: 250,
                            height: 50,
                            child: Center(
                              child: Text(
                                "Add to wishlist",
                                style: TextStyle(color: Colors.black,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          onPressed: null,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 0.5,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'You might also like',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'All',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                                onPressed: () {

                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => GridBox(
                            url: urls[index],
                            onPress: (){

                            },
                          ),
                          itemCount: urls.length,
                        )
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
