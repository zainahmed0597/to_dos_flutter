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
        minWidth: 176.0,
        initialLabelIndex: 1,
        cornerRadius: 12.0,
        borderWidth: 4,
        borderColor: const [Colors.grey],
        activeFgColor: Colors.black,
        inactiveBgColor: Colors.grey,
        inactiveFgColor: Colors.grey[700],
        customTextStyles:  [
          GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.w500),
        ],
        totalSwitches: 2,
        fontSize: 20,
        labels: const ['To-dos', 'Completed'] ,
        // icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
        activeBgColors: const [[Colors.white],[Colors.white]],
      ),
    );
  }
}
