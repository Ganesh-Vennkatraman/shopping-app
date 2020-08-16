import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

  var y = 0;

  List<Color> color = [
    Colors.black,
    Colors.black,
    Colors.amber,
    Colors.black,
    Colors.black,
  ];

  List<String> lists = [
    'Account Details',
    'Loyalty Card',
    'Notifications',
    'Delivery Information',
    'Payment Information',
    'Language',
    'Privacy Settings',
  ];
  int _currentIndex = 2;

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
                'ACCOUNT',
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
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 120,
                    width:  120,
                  ),
                  onPressed: () {

                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Cassie Donk',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Member since 2019',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Rubik',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            'Edit account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  FlatButton(
                    child: Text(
                      'Orders',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    width: 1,
                    height: 20,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  FlatButton(
                    child: Text(
                      'My Address',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    color:Colors.grey,
                    height: 20,
                      width: 1,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  FlatButton(
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  )
                ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              reverse: false,
              itemBuilder: (_, int index) => AccountList
                (
                name: lists[index],
              ),
              itemCount: lists.length,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          var x = index;
          setState(() {
            color[index] = Colors.amber;
            if(index==1){
              color[index]=Colors.black;
              Navigator.pop(context);
              Navigator.pushNamed(context, '/stores');
            }
          });

        },
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        items:[
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
    );
  }
}



class AccountList extends StatelessWidget {
  final String name;
  AccountList({this.name});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      title: Text(
        name,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
      trailing: FlatButton.icon(
        onPressed: () {
        },
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
          size: 15,
        ),
        label: Text(''),
      ),
    );
  }
}
