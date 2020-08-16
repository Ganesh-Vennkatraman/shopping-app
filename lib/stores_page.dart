import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'shop_page.dart';

class Stores extends StatefulWidget {
  @override
  _StoresState createState() => _StoresState();
}

class _StoresState extends State<Stores> {

  List<Color> color = [
    Colors.black,
    Colors.amber,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  int y;

  List<String> storeImages = [
    'https://bestwomenapparels.com/wp-content/uploads/2019/05/bestwomenapparels-fashion.jpg',
    'https://bestwomenapparels.com/wp-content/uploads/2019/05/bestwomenapparels-fashion.jpg,',
    'https://bestwomenapparels.com/wp-content/uploads/2019/05/bestwomenapparels-fashion.jpg',
  ];

  List<String> placeNames = [
    'Champs-Eysees,Paris',
    'Champs-Eysees,Paris',
    'Champs-Eysees,Paris',
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(400),
          child: Container(
            color: Colors.white,
            height: 280,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Paris',
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                  Container(
                    width: 270,
                    child: Text(
                      'Find all Blume stores here',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(5),
                                    hintText: 'Search..',
                                    border: InputBorder.none),
                              ),
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
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black,
                        child: IconButton(
                          icon: Icon(
                            Icons.navigation,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'All Stores',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemBuilder: (context,index){
                      return StoreTile(images: storeImages[index],names: placeNames[index],);
                    },
                    itemCount: storeImages.length,),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              color[index] = Colors.amber;
              if(index==2){
                color[index] = Colors.black;
                Navigator.pop(context);
                Navigator.pushNamed(context, '/account');
              }
            });
          },
          currentIndex: 1,
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

class StoreTile extends StatelessWidget {

  StoreTile({this.images,this.names});

  final String images;
  final String names;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        child: Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(images),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 50,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'Open',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on,color: Colors.white,),
                    Text(
                      names,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20

                    ),),
                  ],
                ),
              ],
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return ShopPage(place: names,image: images,);
          }));
        },
      ),
    );
  }
}
