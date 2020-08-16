import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';



class LoyaltyCard extends StatefulWidget {
  @override
  _LoyaltyCardState createState() => _LoyaltyCardState();
}

class _LoyaltyCardState extends State<LoyaltyCard> {

  List<String> offerImages = [
    'https://catalog.21buttons.com/f68a6b8faf280a9baa49ad181d096a632187ff68.medium.jpg',
    'https://www.petermillar.com/content/dam/petermillar/products/LS/LS2/LS20/LS20Z/ls20z09_dovtl/LS20Z09_DOVTL.jpg.imgw.300.300.jpg',
    'https://assets.ajio.com/medias/sys_master/root/hf7/hd7/13388837027870/-1117Wx1400H-440990578-cream-MODEL.jpg',
  ];

  List<String> offerNames = [
    '10% off on all jeans',
    '20% off on jackets',
    '50% off on shirts',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  'Loyalty Card',
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          CircularPercentIndicator(
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '230',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Rubik',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Loyalty Points',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10
                                  ),
                                ),
                              ],
                            ),
                            radius: 100,
                            percent: (230/300),
                            backgroundColor: Colors.grey,
                            progressColor: Colors.orange,

                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Cassie Donk',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Rubik',
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Status : Member',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Rubik',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xFF262C36),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        'A 5 coupon will be issued every 200 loyalty points. Coupons are 30 days late',
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'My offers',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Rubik',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 300,
                      child: ListView.builder(
                        itemBuilder: (context,index){
                          return OfferTile(images: offerImages[index],names: offerNames[index],);
                        },
                        itemCount: offerImages.length,),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class OfferTile extends StatelessWidget {

  OfferTile({this.images,this.names});

  final String images;
  final String names;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        child: Container(
          alignment: Alignment.bottomLeft,
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(images),
            ),
          ),
          child: Text(
            names,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}