import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tripzzy/day1.dart';
import 'package:tripzzy/description.dart';
import 'package:tripzzy/provider/Firstplaceday2_provider.dart';
import 'package:tripzzy/provider/Firstplaceday3_provider.dart';
import 'package:tripzzy/provider/Firstplaceday4_provider.dart';
import 'package:tripzzy/provider/FourthPlaceDetails.dart';
import 'package:tripzzy/provider/Fourthplaceday2_provider.dart';
import 'package:tripzzy/provider/Fourthplaceday3_provider.dart';
import 'package:tripzzy/provider/Fourthplaceday4_provider.dart';
import 'package:tripzzy/provider/SecondPlaceDetails.dart';
import 'package:tripzzy/provider/Secondplaceday2_provider.dart';
import 'package:tripzzy/provider/Secondplaceday3_provider.dart';
import 'package:tripzzy/provider/Secondplaceday4_provider.dart';
import 'package:tripzzy/provider/ThirdPlaceDetails.dart';
import 'package:tripzzy/provider/Thirdplaceday2_provider.dart';
import 'package:tripzzy/provider/Thirdplaceday3_provider.dart';
import 'package:tripzzy/provider/Thirdplaceday4_provider.dart';
import 'package:tripzzy/provider/dateprovider.dart';

import 'package:tripzzy/provider/placeprovider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserDetails(),
        ),
        ChangeNotifierProvider(
          create: (context) => SecondPlaceDetails(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThirdPlaceDetails(),
        ),
        ChangeNotifierProvider(
          create: (context) => FourthPlaceDetails(),
        ),
        ChangeNotifierProvider(
          create: (context) => FirstPlaceDay2(),
        ),
        ChangeNotifierProvider(
          create: (context) => SecondPlaceDay2(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThirdPlaceDay2(),
        ),
        ChangeNotifierProvider(
          create: (context) => FourthPlaceDay2(),
        ),
        ChangeNotifierProvider(
          create: (context) => FirstPlaceDay3(),
        ),
        ChangeNotifierProvider(
          create: (context) => SecondPlaceDay3(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThirdPlaceDay3(),
        ),
        ChangeNotifierProvider(
          create: (context) => FourthPlaceDay3(),
        ),
        ChangeNotifierProvider(
          create: (context) => FirstPlaceDay4(),
        ),
        ChangeNotifierProvider(
          create: (context) => SecondPlaceDay4(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThirdPlaceDay4(),
        ),
        ChangeNotifierProvider(
          create: (context) => FourthPlaceDay4(),
        ),
        ChangeNotifierProvider(
          create: (context) => DateProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 800), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFB6C1),
      body: Container(
        margin: EdgeInsets.only(top: 90),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
                child: Text(
                  'TRIPZZY',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 1000),
                child: Image.asset(
                  'assets/images/travel1.png',
                  width: 200,
                  height: 200,
                ),
              ),
              _buildTextWithSizedBox('Make', true, width: 310, height: 40),
              _buildTextWithSizedBox('Your', true,
                  width: 240, height: 40, isBold: true),
              _buildTextWithSizedBox('Trip', true, width: 180, height: 43),
              _buildTextWithSizedBox('Easy', true,
                  width: 134, height: 120, isBold: true),
              SizedBox(
                height: 50,
                child: AnimatedOpacity(
                  opacity: _isVisible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1500),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Description(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Let\'s Go',
                          style: TextStyle(
                            fontSize: 25, // Adjust the font size as needed
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                            width:
                                5), // Add some space between the text and the icon
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF0F5882),
                      fixedSize: Size(150, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // Adjust other button styles as needed
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextWithSizedBox(String text, bool alignRight,
      {double width = 0, double height = 0, bool isBold = false}) {
    return Align(
      alignment: alignRight ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        children: [
          SizedBox(height: 10),
          AnimatedOpacity(
            opacity: _isVisible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 1500),
            child: SizedBox(
              width: width,
              height: height,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
