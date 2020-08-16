import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'grid_box.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shoppingapp/Lists.dart';
import 'list_page.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

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
        appBar: PreferredSize(
          child: Container(
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://i.pinimg.com/474x/75/dd/ca/75ddca89e1fa9287dad2f66795414369.jpg',
                    ),
                    fit: BoxFit.fitWidth),
                color: Colors.grey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Winter Collection',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'DISCOVER',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Rubik',
                              fontSize: 20,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                            onPressed: () {
                              Navigator.pushNamed(context, '/collection');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(300),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Categories',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik',
                          fontSize: 20,
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
                              Navigator.pushNamed(context, '/product');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        BoxButton(
                          text: 'New In',
                          imageProvider: NetworkImage(
                              'https://i.pinimg.com/564x/09/40/33/09403385e8eaf5af5cb424894d2240dd.jpg'),
                          onPress: () {
                            Navigator.pushNamed(context, '/list');
                            AppState().updateValue(names, pics, 'New In');
                          },
                        ),
                        BoxButton(
                          text: 'Clothing',
                          imageProvider: NetworkImage(
                              'https://previews.123rf.com/images/yuliialypai/yuliialypai1805/yuliialypai180500078/102654925-summer-women-s-clothing-and-accessories-on-a-brown-background.jpg'),
                          onPress: () {
                            Navigator.pushNamed(context, '/list');
                            AppState().updateValue(names, pics, 'Clothing');
                          },
                        ),
                        BoxButton(
                          text: 'Shoes',
                          imageProvider: NetworkImage(
                              'https://st3.depositphotos.com/1177973/12883/i/950/depositphotos_128834036-stock-photo-grey-shoes-on-grey-background.jpg'),
                          onPress: () {
                            Navigator.pushNamed(context, '/list');
                            AppState().updateValue(names, pics, 'Shoes');
                          },
                        ),
                        BoxButton(
                          text: 'Accessories',
                          imageProvider: NetworkImage(
                              'https://c8.alamy.com/comp/PNK2K8/autumn-female-outfit-set-of-clothes-shoes-and-accessories-on-brown-background-copy-space-PNK2K8.jpg'),
                          onPress: () {
                            Navigator.pushNamed(context, '/list');
                            AppState().updateValue(names, pics, 'Accessories');
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Recommended for you',
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Carousel(
                      boxFit: BoxFit.contain,
                      images: [
                        OfferBox(offer: '20% off on first order',link: 'https://i.pinimg.com/564x/09/40/33/09403385e8eaf5af5cb424894d2240dd.jpg',),
                        OfferBox(offer: '20% off on first order',link: 'https://i.pinimg.com/564x/09/40/33/09403385e8eaf5af5cb424894d2240dd.jpg',),
                        OfferBox(offer: '20% off on first order',link: 'https://i.pinimg.com/564x/09/40/33/09403385e8eaf5af5cb424894d2240dd.jpg',),
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
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Recently Viewed ',
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OfferBox extends StatelessWidget {

  OfferBox({this.offer,this.link});


  final String offer;
  final String link;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        child: Center(
          child: Text(
            offer,
            softWrap: true,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rubik',
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(link),
            fit: BoxFit.cover,
          )
        ),
      ),
      onPressed: (){

      },
    );
  }
}

class BoxButton extends StatelessWidget {
  BoxButton(
      {@required this.text,
      @required this.imageProvider,
      @required this.onPress});

  final String text;
  final ImageProvider imageProvider;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 150),
        height: 200,
        width: 200,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Rubik',
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      onPressed: onPress,
    );
  }
}
