import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  final mainImg;
  final destination;
  final tourPlace;
  final priceTag;

  var ic = Icon(Icons.star, size: 18.0, color: Colors.yellow[800]);

  InfoScreen({
    this.mainImg,
    this.destination,
    this.tourPlace,
    this.priceTag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE054d7a),
        leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        title: Text(destination,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5
          ),
        ),
        centerTitle: true,
      ),
      body:Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(mainImg), fit: BoxFit.cover)
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            transform: Matrix4.translationValues(0.0, -25.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)
              )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    destination,
                    style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.place,
                        size: 14.0,
                        color: Colors.blue[900],
                      ),
                      Text(
                        tourPlace,
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 14.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ic,ic,ic,ic,ic,
                          Text(
                            '  5.0',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 18.0
                            ),
                          )
                        ],
                      ),
                      Text(priceTag,
                        style: TextStyle(
                          color: Colors.indigo[900],
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  SizedBox(height:10.0),
                  Text(
                    '____________About This Place___________',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
                  SizedBox(height: 10.0),
                  Text(
                    'Read more',
                    style: TextStyle(
                      color: Colors.orange[900],
                      fontSize: 16.0
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.favorite_border),
                      FlatButton(
                        padding: EdgeInsets.fromLTRB(50.0, 15.0, 50.0, 15.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0),
                        ),
                        onPressed: (){},
                        color: Colors.orange[900],
                        child: Text('Book Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}