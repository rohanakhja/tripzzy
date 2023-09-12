import 'package:flutter/material.dart';
import 'package:tripzzy/firstplace.dart';
import 'package:tripzzy/fourthplace.dart';
import 'package:tripzzy/secondplace.dart';
import 'package:tripzzy/thirdplace.dart';

import 'PlaceInformation.dart';

class Day1 extends StatefulWidget {
  const Day1({Key? key}) : super(key: key);

  @override
  State<Day1> createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  DateTime? selectedDate; // To store the selected date
  int placeCount = 0;
  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now(); // Initialize with the current date
  }

  List<PlaceInformation> placeInformationList = [];

  void updatePlaceInformation(String placeName, String information) {
    // Check if the place information already exists
    int index =
        placeInformationList.indexWhere((info) => info.placeName == placeName);

    if (index != -1) {
      // If exists, update the information
      placeInformationList[index] = PlaceInformation(placeName, information);
    } else {
      // If not, add new information
      placeInformationList.add(PlaceInformation(placeName, information));
    }
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
            'Day 1',
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
        child: Container(
          padding:
              EdgeInsets.only(top: 15, left: 15), // Add padding to the text
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              Text(
                'Start your Journey',
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
                        height:
                            10), // Add space between the button and date text
                    Text(
                      '${selectedDate!.day.toString()}/${selectedDate!.month.toString()}/${selectedDate!.year.toString()}',
                      style: TextStyle(fontSize: 20),
                    ),

                    SizedBox(height: 35),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Firstplace(),
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
                            builder: (context) => Secondplace(),
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
                            builder: (context) => Thirdplace(),
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
                            builder: (context) => Fourthplace(),
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
  runApp(MaterialApp(home: Day1()));
}
