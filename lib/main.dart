import 'package:flutter/material.dart';
import 'package:vacation_app_design1/vacation_details.dart';
import 'utils.dart';
import 'vacation_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        //scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(20.0, context),
              top: screenAwareSize(30.0, context),
              right: screenAwareSize(20.0, context)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'What would you',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: screenAwareSize(20.0, context),
                    color: Color(0xFF26134D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'like to find?',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: screenAwareSize(20.0, context),
                    color: Color(0xFF26134D),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: screenAwareSize(30.0, context),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    iconContainer(Icons.airplanemode_active, Colors.purple),
                    Expanded(child: Container()),
                    iconContainer(Icons.local_convenience_store, Colors.orange),
                    Expanded(child: Container()),
                    iconContainer(Icons.train, Colors.lightBlue),
                    Expanded(child: Container()),
                    iconContainer(Icons.directions_car, Colors.blue),
                  ],
                ),
                SizedBox(
                  height: screenAwareSize(30.0, context),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Top Destinations',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: screenAwareSize(16.0, context),
                        color: Color(0xFF26134D),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Expanded(child: Container()),
                    InkWell(
                      onTap: () {
                        print('See all TAPPED!!!');
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: screenAwareSize(13.0, context),
                          color: Colors.black.withOpacity(0.3),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenAwareSize(25.0, context),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Container with picture, price and ratings........
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(20.0, context),
              top: screenAwareSize(20.0, context),
              bottom: screenAwareSize(20.0, context),
            ),
            child: Container(
              height: screenAwareSize(220.0, context),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  buildItem(
                      'assets/dolomites.jpg', 'Yosemite Valley, US', '546'),
                  buildItem(
                      'assets/mountains.jpg', 'Spring Valley, US', '675'),
                  buildItem(
                      'assets/landscape.jpg', 'Jalivine River, US', '450'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenAwareSize(20.0, context),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenAwareSize(20.0, context),
                right: screenAwareSize(20.0, context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Popular Hotels',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: screenAwareSize(16.0, context),
                    color: Color(0xFF26134D),
                    fontWeight: FontWeight.w900,
                  ),
                ),

                InkWell(
                  onTap: () {
                    print('See all TAPPED!!!');
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: screenAwareSize(13.0, context),
                      color: Colors.black.withOpacity(0.3),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(20.0, context),
              top: screenAwareSize(20.0, context),
              bottom: screenAwareSize(20.0, context),
            ),
            child: Container(
              height: screenAwareSize(200.0, context),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  hotelPics('assets/landscape.jpg'),
                  hotelPics('assets/mountains.jpg'),
                  hotelPics('assets/dolomites.jpg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  hotelPics(String imgPath) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: screenAwareSize(180.0, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          image: DecorationImage(image: AssetImage(imgPath),fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
              color: Colors.black26.withOpacity(0.3),
              spreadRadius: 2.0,
              blurRadius: 2.0,
            ),
          ],
        ),
      ),
    );
  }

  buildItem(
    String imgPath,
    String name,
    String price,
  ) {
    return InkWell(
      onTap: () {
        //TODO.....................
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> VacationDetails(imgPath: imgPath, name: name, price: price,)));
      },
      child: Padding(
        padding: EdgeInsets.all(screenAwareSize(8.0, context)),
        child: Container(
          //height: screenAwareSize(100.0, context),
          width: screenAwareSize(150.0, context),
          //color: Colors.black,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26.withOpacity(0.3),
                spreadRadius: 2.0,
                blurRadius: 2.0,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(screenAwareSize(5.0, context)),
            child: Column(
              children: <Widget>[
                Container(
                  height: screenAwareSize(100.0, context),
                  width: screenAwareSize(150.0, context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover)
                      //color: Colors.blue,
                      ),
                ),
                SizedBox(
                  height: screenAwareSize(8.0, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: screenAwareSize(12.0, context),
                            color: Color(0xFF26134D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: screenAwareSize(10.0, context),
                        ),
                        Text(
                          '\$$price',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: screenAwareSize(15.0, context),
                            color: Color(0xFF26134D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: screenAwareSize(15.0, context),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                              size: screenAwareSize(10.0, context),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                              size: screenAwareSize(10.0, context),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                              size: screenAwareSize(10.0, context),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                              size: screenAwareSize(10.0, context),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.withOpacity(0.6),
                              size: screenAwareSize(10.0, context),
                            ),
                            SizedBox(
                              width: screenAwareSize(60.0, context),
                            ),
                            Container(
                              height: screenAwareSize(20.0, context),
                              width: screenAwareSize(20.0, context),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.redAccent,
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: screenAwareSize(10.0, context),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  iconContainer(IconData icon, Color color) {
    return Container(
      height: screenAwareSize(59.0, context),
      width: screenAwareSize(59.0, context),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Icon(
          icon,
          color: color,
          size: screenAwareSize(25.0, context),
        ),
      ),
    );
  }
}
