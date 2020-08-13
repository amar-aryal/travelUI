import 'package:flutter/material.dart';
import 'package:travel_ui/UI/info_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
           ShaderMask(shaderCallback: (rect){
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.white60],
              ).createShader(Rect.fromLTRB(0, -140, rect.width, rect.height-20));
            },
              blendMode: BlendMode.lighten,
              child: Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/bg.jpeg'), fit: BoxFit.cover)
                ),
                child: Center(
                    child: Text('World Travels',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
              ),
            ),
            Container(
              height: 150.0,
              width: 340.0,
              transform: Matrix4.translationValues(0.0, -75.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/main.jpeg'), 
                fit: BoxFit.cover,
                colorFilter:  ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken)
                )
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30.0,),
                  Center(
                    child: Text('Sunset',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                  Center(
                    child: Text('Available in January, 7-14 days tour',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Center(
                    child: OutlineButton(onPressed: (){},
                      borderSide: BorderSide(color: Colors.white),
                      child: Text('More Info',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 10.0,),
            Padding(
              padding: EdgeInsets.only(left: 35.0, right: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('All Tour Packages',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text('Sort by',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('  Popularity',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  children: <Widget>[
                    _buildPlaceInfo(context,'assets/venice.jpeg','Venice','Venice, Italy','\$270'),
                    SizedBox(height: 20.0,),
                    _buildPlaceInfo(context,'assets/ktm.jpg','Boudhanath','Kathmandu, Nepal','\$350'),
                    SizedBox(height: 20.0,),
                    _buildPlaceInfo(context,'assets/paris.jpeg','Eiffel Tower','Paris, France','\$380'),
                    SizedBox(height: 20.0,),
                    _buildPlaceInfo(context,'assets/london.jpeg','Big Ben','London,UK','\$470'),
                    SizedBox(height: 20.0,),
                    _buildPlaceInfo(context,'assets/ny.jpeg','Statue of Liberty','New York, USA','\$490'),
                    SizedBox(height: 20.0,),
                    _buildPlaceInfo(context,'assets/japan.jpeg','Mt.Fuji','Tokyo, Japan','\$400'),
                    SizedBox(height: 20.0,),
                    _buildPlaceInfo(context,'assets/thailand.jpeg','Bangkok','Bangkok, Thailand','\$350'),
                    SizedBox(height: 20.0,),

                  ],
                ),
              ),
            )
          ],
        ),
      );
  }

  //this widget builds the places to display in the screen

  Widget _buildPlaceInfo(BuildContext context, String img, String touristDest, String place, String price){
    return InkWell(
      onTap:(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => InfoScreen(mainImg: img, destination: touristDest, tourPlace: place, priceTag: price))
        );
      },
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 35.0, right: 35.0),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left:30.0),
                height: 90.0,
                width: 140.0,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)
                ),
              ),
              SizedBox(width: 20.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    touristDest,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    place,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Text(
                    'Start price:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.0,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        price,
                        style: TextStyle(
                          color: Color(0xFFE32fcde),
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        '/pack',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}