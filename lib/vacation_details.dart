import 'package:flutter/material.dart';
import 'utils.dart';

class VacationDetails extends StatelessWidget {
  String imgPath;
  String name;
  String price;

  VacationDetails({this.imgPath, this.name, this.price});

  iconContainer(
      IconData icon, Color color, Color decColor, BuildContext context) {
    return Container(
      height: screenAwareSize(59.0, context),
      width: screenAwareSize(59.0, context),
      decoration: BoxDecoration(
        color: decColor,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //SizedBox(height: screenAwareSize(20.0, context),),
          Padding(
            padding: EdgeInsets.all(screenAwareSize(12.0, context)),
            child: Container(
              height: screenAwareSize(370.0, context),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.all(screenAwareSize(12.0, context)),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: screenAwareSize(30.0, context),
                        width: screenAwareSize(30.0, context),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.withOpacity(0.4),
                        ),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenAwareSize(8.0, context),
                          right: screenAwareSize(100.0, context)),
                      child: Text(
                        name,
                        style: TextStyle(
                            fontSize: screenAwareSize(33.0, context),
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: screenAwareSize(10.0, context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenAwareSize(12.0, context),
                          right: screenAwareSize(12.0, context),
                          bottom: screenAwareSize(15.0, context)),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '\$$price',
                            style: TextStyle(
                              fontSize: screenAwareSize(25.0, context),
                              color: Colors.white,
                              fontFamily: 'Montserrat-Bold',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: screenAwareSize(8.0, context),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Per',
                                  style: TextStyle(
                                    fontSize: screenAwareSize(10.0, context),
                                    color: Colors.white,
                                    fontFamily: 'Montserrat-Bold',
                                  ),
                                ),
                                Text(
                                  'Person',
                                  style: TextStyle(
                                    fontSize: screenAwareSize(10.0, context),
                                    color: Colors.white,
                                    fontFamily: 'Montserrat-Bold',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent,
                                size: screenAwareSize(12.0, context),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent,
                                size: screenAwareSize(12.0, context),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent,
                                size: screenAwareSize(12.0, context),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent,
                                size: screenAwareSize(12.0, context),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white.withOpacity(0.8),
                                size: screenAwareSize(12.0, context),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(30.0, context),
              top: screenAwareSize(12.0, context),
            ),
            child: Text(
              'Introduction',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: screenAwareSize(18.0, context),
                color: Color(0xFF26134D),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
                left: screenAwareSize(30.0, context),
                top: screenAwareSize(12.0, context),
                right: screenAwareSize(30.0, context),
            ),
            child: Text(
              'Eget mattis at, laoreet vel et velit aliquam diam ante, aliquet sit amet vulputate et magna feugiat laoreet vel velit lorem.'
              'Eget mattis at, laoreet vel et velit aliquam diam ante, aliquet sit amet vulputate et magna feugiat laoreet vel velit lorem.'
              'Eget mattis at, laoreet vel et velit aliquam diam ante, aliquet sit amet vulputate et magna feugiat laoreet vel velit lorem.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: screenAwareSize(10.0, context),
                color: Color(0xFF26134D),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: EdgeInsets.only(
                left: screenAwareSize(30.0, context),
                right: screenAwareSize(20.0, context),
              bottom: screenAwareSize(10.0, context)
            ),
            child: Row(
              children: <Widget>[
                iconContainer(Icons.favorite_border, Colors.redAccent,
                    Colors.pinkAccent.withOpacity(0.2), context),
                SizedBox(
                  width: 20.0,
                ),
                iconContainer(Icons.send, Color(0xFF26134D),
                    Colors.blueAccent.withOpacity(0.2), context),
                Expanded(child: Container()),
                Container(
                  height: screenAwareSize(59.0, context),
                  width: screenAwareSize(130.0, context),
                  decoration: BoxDecoration(
                    color: Color(0xFF26134D),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      'BOOK',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: screenAwareSize(15.0, context),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
