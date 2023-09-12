import 'package:flutter/material.dart';
import 'package:tripzzy/fourthplace.dart';
import 'package:tripzzy/fourthplace_day2.dart';
import 'package:tripzzy/secondplace.dart';
import 'package:tripzzy/secondplace_day2.dart';
import 'package:tripzzy/secondplace_day3.dart';
import 'package:tripzzy/thirdplace.dart';
import 'package:tripzzy/thirdplace_day2.dart';
import 'package:tripzzy/thirdplace_day3.dart';
import 'firstplace_day3.dart';
import 'fourthplace_day3.dart';

class Day3 extends StatefulWidget {
  const Day3({Key? key}) : super(key: key);

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  DateTime? selectedDate; // To store the selected date

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now(); // Initialize with the current date
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate!,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove back button
        backgroundColor: Color(0xFFF37D4A), // Set background color
        title: Center(
          child: Text(
            'Day 3',
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
      body: Container(
        padding: EdgeInsets.only(top: 15, left: 13), // Add padding to the text
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align text to the left
          children: [
            Text(
              'Enjoy your Journey',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontStyle: FontStyle.italic,
                letterSpacing: 1,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding:
                  EdgeInsets.only(left: 15, top: 0, right: 20), // Add padding
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: Text(
                      'Date',
                      style: TextStyle(
                        fontStyle: FontStyle.italic, // Make text italic
                        fontWeight: FontWeight.bold,
                        fontSize: 30, // Make text bold
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF711A1A), // Set button color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(40), // Set border radius
                      ),
                      minimumSize: Size(125, 45), // Set button size
                    ),
                  ),
                  SizedBox(
                      height: 10), // Add space between the button and date text
                  Text(
                    '${selectedDate!.day.toString()}/${selectedDate!.month.toString()}/${selectedDate!.year.toString()}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 40), // Add space between date and button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FirstplaceDay3Main(),
                        ),
                      );
                    },
                    child: Text(
                      'First place',
                      style: TextStyle(
                        fontStyle: FontStyle.italic, // Make text italic
                        fontWeight: FontWeight.bold, // Make text bold
                        fontSize: 38, // Set font size
                      ),
                    ), // Button text
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0F5882), // Set button color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(40), // Set border radius
                      ),
                      minimumSize: Size(300, 65), // Set button size
                    ),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondplaceDay3Main(),
                        ),
                      );
                    },
                    child: Text(
                      'Second place',
                      style: TextStyle(
                        fontStyle: FontStyle.italic, // Make text italic
                        fontWeight: FontWeight.bold, // Make text bold
                        fontSize: 38, // Set font size
                      ),
                    ), // Button text
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0F5882), // Set button color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(40), // Set border radius
                      ),
                      minimumSize: Size(300, 65), // Set button size
                    ),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdplaceDay3Main(),
                        ),
                      );
                    },
                    child: Text(
                      'Third place',
                      style: TextStyle(
                        fontStyle: FontStyle.italic, // Make text italic
                        fontWeight: FontWeight.bold, // Make text bold
                        fontSize: 38, // Set font size
                      ),
                    ), // Button text
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0F5882), // Set button color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(40), // Set border radius
                      ),
                      minimumSize: Size(300, 65), // Set button size
                    ),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FourthplaceDay3Main(),
                        ),
                      );
                    },
                    child: Text(
                      'Fourth place',
                      style: TextStyle(
                        fontStyle: FontStyle.italic, // Make text italic
                        fontWeight: FontWeight.bold, // Make text bold
                        fontSize: 38, // Set font size
                      ),
                    ), // Button text
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0F5882), // Set button color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(40), // Set border radius
                      ),
                      minimumSize: Size(300, 65), // Set button size
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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

void main() {
  runApp(MaterialApp(home: Day3()));
}
