import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'grid_box.dart';

class WinterCollectionPage extends StatefulWidget {

  @override
  _WinterCollectionPageState createState() => _WinterCollectionPageState();
}

class _WinterCollectionPageState extends State<WinterCollectionPage> {
  List<Color> color = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  var y=0;
  int currentIndex;

  List<String> urls = [
    'https://i1.wp.com/fashionvilas.com/wp-content/uploads/2015/11/Gul-Ahmed-Ideas-Winter-Collection-For-Young-Girls-2015-16-5.jpg?resize=960%2C960&ssl=1',
    'https://www.dhresource.com/0x0/f2/albu/g3/M00/E1/AB/rBVaHFRbaL-APAXjAAIcb4ofx8g170.jpg',
    'https://img2.junaroad.com/uiproducts/16656622/pri_175_p-1571138066.jpg',
    'https://queenspark.com/wp-content/gallery/winter-collection/Winter_10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        'https://i.pinimg.com/474x/75/dd/ca/75ddca89e1fa9287dad2f66795414369.jpg'),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(
                            width: 250,
                          ),
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
                      SizedBox(
                        height: 190,
                      ),
                      Text(
                        'Winter Collection',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: 'Rubik',
                        ),
                      ),
                      Text(
                        '${urls.length} Items',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 400,
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
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            var x = index;
            setState(() {
              color[y] = Colors.black;
              color[index] = Colors.amber;
              y=x;
            });
            if(index==1){
              color[index] = Colors.black;
              Navigator.pushNamed(context, '/stores');
            } else if(index==2){
              color[index] = Colors.black;
              Navigator.pushNamed(context, '/account');
            }
          },
          items: [
            BottomNavigationBarItem(
              title: Text(''),
              icon: Icon(Icons.home,color: color[0],),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Icon(Icons.location_on,color: color[1]),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Icon(Icons.person,color: color[2]),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Icon(Icons.shopping_basket,color: color[3]),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Icon(Icons.more_horiz,color: color[4]),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}


