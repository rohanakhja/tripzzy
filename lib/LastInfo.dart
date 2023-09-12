import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
import 'package:tripzzy/provider/placeprovider.dart';

class LastInfo extends StatelessWidget {
  const LastInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFF37D4A),
        title: const Center(
          child: Text(
            'All Information',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0,
        toolbarHeight: 80.0,
        shape: CustomShapeBorder(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: const EdgeInsets.only(right: 50, top: 20),
              child: Text(
                'Note:- 1st is Location',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(225, 9, 0, 170)),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(right: 20, top: 10),
              child: Text(
                '2nd is Time',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(226, 226, 68, 0)),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 40, top: 10),
              child: Text(
                '3rd is Budget in Rs',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 11, 157, 0)),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 30, left: 70),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '★ Day 1',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 1',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<UserDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<UserDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<UserDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 2',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<SecondPlaceDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<SecondPlaceDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<SecondPlaceDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 3',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<ThirdPlaceDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<ThirdPlaceDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<ThirdPlaceDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 4',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<FourthPlaceDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<FourthPlaceDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<FourthPlaceDetails>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 30, left: 70),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '★ Day 2',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 1',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<FirstPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<FirstPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<FirstPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 2',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<SecondPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<SecondPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<SecondPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 3',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<ThirdPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<ThirdPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<ThirdPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 4',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<FourthPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<FourthPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<FourthPlaceDay2>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 30, left: 70),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '★ Day 3',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 1',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<FirstPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<FirstPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<FirstPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 2',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<SecondPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<SecondPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<SecondPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 3',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<ThirdPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<ThirdPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<ThirdPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 4',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<FourthPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<FourthPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<FourthPlaceDay3>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 30, left: 70),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '★ Day 4',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 1',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<FirstPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<FirstPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<FirstPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 2',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<SecondPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<SecondPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<SecondPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 3',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<ThirdPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<ThirdPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<ThirdPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: SizedBox(
                  height: 60,
                  child: Text(
                    '➪ Place 4',
                    style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer<FourthPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    userDetails.enteredLocation ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(225, 9, 0, 170)),
                  ),
                );
              },
            ),
            Consumer<FourthPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: userDetails.startTime == null &&
                          userDetails.endTime == null
                      ? Text('')
                      : Text(
                          '${userDetails.startTime} - ${userDetails.endTime}',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(226, 226, 68, 0)),
                        ),
                );
              },
            ),
            Consumer<FourthPlaceDay4>(
              builder: (context, userDetails, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: Text(
                    userDetails.budget ?? '',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 11, 157, 0)),
                  ),
                );
              },
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
