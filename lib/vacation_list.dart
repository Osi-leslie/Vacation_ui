import 'package:flutter/material.dart';
import 'utils.dart';

class VacationCard extends StatefulWidget {
  @override
  _VacationCardState createState() => _VacationCardState();
}

class _VacationCardState extends State<VacationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: screenAwareSize(15.0, context),
          top: screenAwareSize(20.0, context)),
      height: screenAwareSize(170.0, context),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[vacationCard(), vacationCard(), vacationCard()],
      ),
    );
  }



  vacationCard() {
    return Stack(
      children: <Widget>[
        Container(
          height: screenAwareSize(150.0, context),
          width: screenAwareSize(100.0, context),
          color: Colors.black,
        ),
      ],
    );
  }
}
