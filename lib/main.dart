import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new ExampleWidget()));
}

class ExampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget bigCircle = new Container(
      width: 300.0,
      height: 300.0,
      decoration: new BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
    );

    return new Material(
      color: Colors.black,
      child: new Center(
        child: new Stack(
          children: <Widget>[
            bigCircle,
            new Positioned(
              child: new CircleButton(
                  onTap: () {showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 5.0,
              left: 130.0,

            ),
            new Positioned(
              child: new CircleButton(
                  onTap: () {showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 23.0,
              left: 188.0,
            ),
            new Positioned(
              child: new CircleButton(
                  onTap: () {showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 65.0,
              left: 229.0,
            ),
            new Positioned(
              child: new CircleButton(
                  onTap: () {showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 20.0,
              left: 69.0,
            ),
            new Positioned(
              child: new CircleButton(
                 onTap: () {showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 61.0,
              left: 24.0,
            ),

            new Positioned(
              child: new CircleButton(
                  onTap: () {showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 120.0,
              left: 5.0,
            ),
            new Positioned(
              child: new CircleButton(
                  onTap: (){showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 120.0,
              right: 5.0,
            ),
            new Positioned(
              child: new CircleButton(
                  onTap: (){showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 245.0,
              left: 130.0,
            ),
            new Positioned(
              child: new CircleButton(
                  onTap: (){showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 225.0,
              left: 190.0,
            ),
            new Positioned(
              child: new CircleButton(
                onTap: () {showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 180.0,
              left: 230.0,
            ),
            new Positioned(
              child: new CircleButton(
                onTap: () {showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 225.0,
              left: 69.0,
            ),
            new Positioned(
              child: new CircleButton(
                onTap: () {showDialog(
                      context: context,
                      builder: (BuildContext context) => leadDialog);},),
              top: 180.0,
              left: 24.0,
            ),

            ],
        ),
      ),
    );
  }
}
class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;

  const CircleButton({Key key, this.onTap, this.iconData,onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 50.0;

    return new InkResponse(
      onTap: onTap,
      child: new Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: new Icon(
          iconData,
          color: Colors.black,
        ),
      ),
    );
  }
}
Dialog leadDialog = Dialog(
  child: Container(
    height: 300.0,
    width: 360.0,
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Add Reminders',
            style:
            TextStyle(color: Colors.black, fontSize: 22.0),
          ),
        ),
      ],
    ),
  ),
);