import 'package:flutter/material.dart';
import 'package:water_track/water_track.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Water Track')),
        body: WaterTrack(),
      ),
    );
  }
}
