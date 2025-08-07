import 'package:flutter/material.dart';

class WaterTrack extends StatefulWidget {
  const WaterTrack({super.key});

  @override
  State<WaterTrack> createState() => _WaterTrackState();
}

class _WaterTrackState extends State<WaterTrack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    blurRadius: 12,
                    spreadRadius: 2.0,
                  ),
                ],
              ),

              child: Column(
                children: [
                  Text(
                    "Today's InTank",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "5000 LTR",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),

            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                    backgroundColor: Colors.grey,
                    value: 0.7,
                    strokeWidth: 20,
                  ),
                ),
                Text(
                  "70%",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
