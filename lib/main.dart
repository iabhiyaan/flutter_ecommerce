import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainContent(),
    );
  }
}

class MainContent extends StatefulWidget {
  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  Column makeSlider({image, title, price, color}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 25.0, bottom: 12.0),
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: color,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.03),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Image.asset(image),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.blue.shade900,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          price,
          style: TextStyle(
            color: Colors.blue.shade700,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  double imageWidth = 100;
  double imageHeight = 120;

  Column makeAvatarSlider({image, title}) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            height: imageHeight,
            width: imageWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('images/a.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(title)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.notifications_none,
                      color: Colors.blue.shade900,
                    ),
                    SizedBox(width: 20.0),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.10),
                            spreadRadius: 2,
                            blurRadius: 16,
                            offset: Offset(0.2, 6),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(50.0),
                        image: DecorationImage(
                          image: AssetImage('images/a.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        Colors.blue[900].withOpacity(0.9),
                        Colors.blue[900].withOpacity(0.6),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Beats Wireless',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              '89\$',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            FlatButton(
                              onPressed: null,
                              child: Text(
                                'Best Seller',
                                style: TextStyle(color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset('images/h1.png'),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Popular Deals',
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue.shade700,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      makeSlider(
                        image: 'images/h1.png',
                        title: 'NBA Collection',
                        price: '250\$',
                        color: Colors.blue,
                      ),
                      makeSlider(
                        image: 'images/h2.png',
                        title: 'Desert Sand',
                        price: '150\$',
                        color: Colors.yellow,
                      ),
                      makeSlider(
                        image: 'images/h1.png',
                        title: 'Crystal Collection',
                        price: '100\$',
                        color: Colors.blue[300],
                      ),
                      makeSlider(
                        image: 'images/h2.png',
                        title: 'Desert Sand',
                        price: '150\$',
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Best Sellers',
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue.shade700,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  height: imageHeight,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      makeAvatarSlider(image: 'images/a.jpg', title: 'Abhiyan'),
                      SizedBox(width: 15.0),
                      makeAvatarSlider(
                          image: 'images/a.jpg', title: 'Shrestha'),
                      SizedBox(width: 15.0),
                      makeAvatarSlider(image: 'images/a.jpg', title: 'A'),
                      SizedBox(width: 15.0),
                      makeAvatarSlider(image: 'images/a.jpg', title: 'A'),
                      SizedBox(width: 15.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
