import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  List<String> brandTitle = [
    'Adidas',
    'Diesel',
    'Converse',
  ];
  bool isChecked=false;

  List<Color> circleColor = [
    Colors.brown,
    Colors.black,
    Colors.green,
    Colors.yellow,
  ];

  List<double> iconSize = [
    0,
    0,
    0,
    0,
  ];

  var y = 0;
  var z = 0;

  static double minValue = 12;
  static double maxValue = 200;

  List<Color> boxColor = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  List<String> size = ['XS', 'S', 'M', 'L', 'XL'];

  RangeValues values =  RangeValues(minValue,maxValue);

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
                  'CART',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Price',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Rubik',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Min : ${values.start.round().toString()}',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Rubik',
                      fontSize: 20
                    ),
                  ),
                  Text(
                      'Max : ${values.end.round().toString()}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik',
                          fontSize: 20
                      ),
                  ),
                ],
              ),
              Container(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 5,
                    overlayColor: Colors.transparent,
                    minThumbSeparation: 30,
                    rangeThumbShape: RoundRangeSliderThumbShape(
                      enabledThumbRadius: 10,
                      disabledThumbRadius: 10,
                    ),
                  ),
                  child: RangeSlider(
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey,
                    divisions: (maxValue-minValue).round().toInt(),
                    labels: RangeLabels(values.start.round().toString(), values.end.round().toString()),
                    min: minValue,
                    max: maxValue,
                    values: values,
                    onChanged: (val) {
                      setState(() {
                        values = val;
                      });
                    },
                  ),
                ),
              ),
              Text(
                'Colors',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Rubik',
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
              Text(
                'Sizes',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Rubik',
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
                'Brands',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Rubik',
                ),
              ),
              ListTile(
                title: Text(
                  'Adidas',
                  style: TextStyle(
                    color: isChecked?Colors.black:Colors.grey,
                    fontWeight: isChecked?FontWeight.bold:null,
                  ),
                ),
                trailing: Checkbox(
                  value: isChecked,
                  activeColor: Colors.black,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Adidas',
                  style: TextStyle(
                    color: isChecked?Colors.black:Colors.grey,
                    fontWeight: isChecked?FontWeight.bold:null,
                  ),
                ),
                trailing: Checkbox(
                  value: isChecked,
                  activeColor: Colors.black,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
