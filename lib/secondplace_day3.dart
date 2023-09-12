import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tripzzy/day1.dart';
import 'package:tripzzy/day2.dart';
import 'package:tripzzy/day3.dart';
import 'package:tripzzy/provider/Firstplaceday2_provider.dart';
import 'package:tripzzy/provider/Secondplaceday2_provider.dart';
import 'package:tripzzy/provider/Secondplaceday3_provider.dart';
import 'package:tripzzy/provider/placeprovider.dart';
import 'package:tripzzy/secondplace.dart';

import 'LastInfo.dart';

class SecondplaceDay3Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? enteredLocation =
        Provider.of<SecondPlaceDay3>(context, listen: false)
            .enteredLocation; // Variable to hold entered text
    String? startTime = Provider.of<SecondPlaceDay3>(context, listen: false)
        .startTime; // Variable to hold start time
    String? endTime = Provider.of<SecondPlaceDay3>(context, listen: false)
        .endTime; // Variable to hold end time
    String? budget =
        Provider.of<SecondPlaceDay3>(context, listen: false).budget;

    void _showTextFieldDialog() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Enter Text'),
            content: TextField(
              onChanged: (value) {
                //store value
                Provider.of<SecondPlaceDay3>(context, listen: false)
                    .setEnteredLocation(value);
              },
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    }

    void _showTimePickerDialog() async {
      bool isStartTimePicker =
          Provider.of<SecondPlaceDay3>(context, listen: false)
              .isStartTimePicker;

      TimeOfDay? selectedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (selectedTime != null) {
        if (!isStartTimePicker) {
          String startTime = selectedTime.format(context);
          //store value
          Provider.of<SecondPlaceDay3>(context, listen: false)
              .setStartTime(startTime);
          Provider.of<SecondPlaceDay3>(context, listen: false)
              .setStartTimePicker(true);
        } else {
          String endTime = selectedTime.format(context);
          //store value
          Provider.of<SecondPlaceDay3>(context, listen: false)
              .setEndTime(endTime);
          Provider.of<SecondPlaceDay3>(context, listen: false)
              .setStartTimePicker(false);
        }
      }
    }

    void _showBudgetDialog() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Budget'),
            content: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                //store value
                Provider.of<SecondPlaceDay3>(context, listen: false)
                    .setBudget(value);
              },
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove back button
        backgroundColor: Color(0xFFF37D4A), // Set background color
        title: Center(
          child: Text(
            'Second place',
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 670, top: 20),
              child: SizedBox(height: 10),
            ),
            ElevatedButton(
              onPressed: () {
                _showTextFieldDialog(); // Call function to show text field dialog
              },
              child: Text(
                ' Location',
                style: TextStyle(
                  fontStyle: FontStyle.italic, // Make text italic
                  fontWeight: FontWeight.bold, // Make text bold
                  fontSize: 38, // Set font size
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0F5882), // Set button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(40), // Bottom left corner
                    bottomRight: Radius.circular(40), // Bottom right corner
                  ), // Set border radius
                ),
                minimumSize: Size(300, 65), // Set button size
              ),
            ),
            SizedBox(height: 14),
            // Text(
            //   '${enteredLocation}}', // Display entered text below button
            //   style: TextStyle(
            //     fontSize: 17,
            //   ),
            // ),

            // Display entered text below button
            Consumer<SecondPlaceDay3>(
              builder: (context, userDetails, _) {
                return Text(
                  userDetails.enteredLocation ?? 'Enter Location',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                );
              },
            ),

            SizedBox(height: 23), // Add spacing
            ElevatedButton(
              onPressed: () {
                _showTimePickerDialog(); // Show time picker for both start and end time
              },
              child: Text(
                'Time',
                style: TextStyle(
                  fontStyle: FontStyle.italic, // Make text italic
                  fontWeight: FontWeight.bold, // Make text bold
                  fontSize: 38, // Set font size
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0F5882), // Set button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10), // Top left corner
                    topRight: Radius.circular(10), // Top right corner
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                minimumSize: Size(230, 65), // Set button size
              ),
            ),
            SizedBox(height: 17),
            // Text(
            //   '${startTime} - ${endTime}', // Display start and end times below button
            //   style: TextStyle(
            //     fontSize: 17,
            //   ),
            //   textAlign: TextAlign.center,
            // ),

            // Display entered text below button
            Consumer<SecondPlaceDay3>(
              builder: (context, userDetails, _) {
                return userDetails.startTime == null &&
                        userDetails.endTime == null
                    ? Text('Enter Time')
                    : Text(
                        '${userDetails.startTime} - ${userDetails.endTime}',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      );
              },
            ),
            SizedBox(height: 25), // Add spacing
            ElevatedButton(
              onPressed: () {
                _showBudgetDialog(); // Call function to show budget dialog
              },
              child: Text(
                ' Budget',
                style: TextStyle(
                  fontStyle: FontStyle.italic, // Make text italic
                  fontWeight: FontWeight.bold, // Make text bold
                  fontSize: 38, // Set font size
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0F5882), // Set button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10), // Top left corner
                    topRight: Radius.circular(10), // Top right corner
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                minimumSize: Size(167, 65), // Set button size
              ),
            ),
            SizedBox(height: 17),
            // Text(
            //   '${budget}', // Display budget below button
            //   style: TextStyle(
            //     fontSize: 17,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            // Display entered text below button
            Consumer<SecondPlaceDay3>(
              builder: (context, userDetails, _) {
                return Text(
                  userDetails.budget ?? 'Enter Budget',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                );
              },
            ),
            SizedBox(height: 28), // Add spacing
            // Add the Image widget here
            SizedBox(
              height: 130,
              width: 190,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    20), // Clip content with the same border radius
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.grey.withOpacity(0.5), // Set opacity and color
                    BlendMode.srcATop,
                  ),
                  child: Image.asset(
                    'assets/images/first.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            // Add spacing
            Row(
              children: [
                SizedBox(width: 45),
                ElevatedButton(
                  onPressed: () {
                    //nevigate
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Day3(),
                      ),
                    );
                  },
                  child: Text(
                    'Next Place',
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
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    //nevigate
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Day3(),
                      ),
                    );
                  },
                  child: Text(
                    'Next Day',
                    style: TextStyle(
                      fontSize: 21,
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
              ],
            ),

            SizedBox(
              height: 70,
              width: 270,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<SecondPlaceDay3>(context, listen: false)
                          .clearData();
                    },
                    child: Text(
                      'Clear Info',
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
                  SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      //nevigate
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LastInfo(),
                        ),
                      );
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 21,
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
