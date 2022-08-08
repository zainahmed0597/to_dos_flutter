import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({Key? key}) : super(key: key);

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ToggleSwitch(
        minHeight: 44.0,
        minWidth: 164,
        initialLabelIndex: 1,
        cornerRadius: 12.0,
        borderWidth: 4,
        radiusStyle: true,

        borderColor: const [Color(0xFFEEEEEE)],
        activeFgColor: Colors.black,
        inactiveBgColor: Colors.grey[200],
        inactiveFgColor: Colors.grey[400],
        // customTextStyles: const [
        //   TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
        //   null
        // ],
        totalSwitches: 2,
        fontSize: 18,
        labels: const ['To-dos', 'Completed'],
        // icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
        activeBgColors: const [
          [Colors.white],
          [Colors.white]
        ],
      ),
    );
  }
}
