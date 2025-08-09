import 'package:flutter/material.dart';
import 'package:water_track/customWidget.dart';
//Water tracker main app

class WaterTrack extends StatefulWidget {
  const WaterTrack({super.key});

  @override
  State<WaterTrack> createState() => _WaterTrackState();
}

class _WaterTrackState extends State<WaterTrack> {
  int currentInTank = 0;
  final int goal = 5000;

  void addWater(int amount) {
    setState(() {
      currentInTank = (currentInTank + amount).clamp(0, goal);
    });
  }

  void clearTank() {
    setState(() {
      currentInTank = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = (currentInTank / goal).clamp(0, 1);
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    " +${currentInTank}",
                    style: TextStyle(
                      fontSize: 20,
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
                    value: progress,
                    strokeWidth: 20,
                  ),
                ),
                Text(
                  "${(progress * 100).toInt()}%",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ],
            ),

            SizedBox(height: 60),
            CustomButton(
              onClick: () => addWater(200),
              amount: 200,
              icon: Icons.waterfall_chart,
            ),
            SizedBox(height: 15),
            CustomButton(onClick: () => addWater(500), amount: 500),
            SizedBox(height: 15),
            CustomButton(onClick: () => addWater(1000), amount: 1000),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 60,
                width: 450,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () => clearTank(),
                  child: Text(
                    "Clear Tank",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
