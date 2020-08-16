import 'package:flutter/material.dart';
import 'grid_box.dart';

class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {

  List<String> urls = [
    'https://i1.wp.com/fashionvilas.com/wp-content/uploads/2015/11/Gul-Ahmed-Ideas-Winter-Collection-For-Young-Girls-2015-16-5.jpg?resize=960%2C960&ssl=1',
    'https://www.dhresource.com/0x0/f2/albu/g3/M00/E1/AB/rBVaHFRbaL-APAXjAAIcb4ofx8g170.jpg',
    'https://www.stylesgap.com/wp-content/uploads/2017/10/Kayseria-Best-Winter-Dresses-Collection-2018-for-Women-Little-Girls-8.jpg',
    'https://img2.junaroad.com/uiproducts/16656622/pri_175_p-1571138066.jpg',
    'https://queenspark.com/wp-content/gallery/winter-collection/Winter_10.jpg',
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
                'WISHLIST',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '27 Items',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik',
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.toc,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 500,
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(10),
              children: List.generate(
                urls.length,
                    (index) => GridBox(
                  url: urls[index],
                  onPress: () {

                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
