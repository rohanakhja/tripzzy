import 'package:flutter/material.dart';
import 'package:tripzzy/day1.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Remove back button
          backgroundColor: Color(0xFFF37D4A), // Set background color
          title: Center(
            child: Text(
              'Introduction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold, // Set title text color to white
              ),
            ),
          ),
          elevation: 0,
          toolbarHeight: 80.0, // Set the height of the AppBar
          shape:
              CustomShapeBorder(), // Use a custom shape for the curved bottom edge
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 35),
          // Add spacing
          Row(children: [
            SizedBox(width: 40),
            ElevatedButton(
              onPressed: () {
                //nevigate
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Day1(),
                  ),
                );
              },
              child: Text(
                'Next ➜',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(202, 7, 13, 17), // Set button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(120, 40), // Set button size
              ),
            ),
          ])
        ])));
  }
}

class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final double radius = 20; // Adjusted radius for the curve

    Path path = Path()
      ..lineTo(0, rect.height - radius)
      ..quadraticBezierTo(rect.width / 2, rect.height + radius, rect.width,
          rect.height - radius)
      ..lineTo(rect.width, 0)
      ..close();

    return path;
  }
}
