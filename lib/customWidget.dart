import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  IconData? icon;
  final VoidCallback onClick;
  final int amount;

  CustomButton({
    super.key,
    this.icon,
    required this.onClick,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 440,
        height: 60,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: onClick,
          icon: Icon(icon ?? Icons.water_drop, size: 40),
          label: Text(
            amount.toString(),
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
