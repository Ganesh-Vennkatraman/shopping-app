import 'package:flutter/material.dart';
import 'grid_box.dart';


class EachListPage extends StatelessWidget {

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
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 90,left: 70),
            child: Text(
              'T-Shirts',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          backgroundColor: Colors.white,
          leading: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            FlatButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: Text(''),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: double.infinity,
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
      ),
    );
  }
}
