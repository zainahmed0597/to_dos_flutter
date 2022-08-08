import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'icon_button.dart';

class ActiveActivity extends StatefulWidget {
  const ActiveActivity({Key? key}) : super(key: key);

  @override
  State<ActiveActivity> createState() => _ActiveActivityState();
}

class _ActiveActivityState extends State<ActiveActivity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.1,
              0.5,
              1,
            ],
            colors: [
              Colors.lightBlueAccent,
              Color(0xFFF8BBD0),
              Colors.white,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Every day',
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sleep',
                    style: GoogleFonts.poppins(
                        fontSize: 35, fontWeight: FontWeight.w500),
                  ),
                  const IconButtonWidget(
                    iconcolor: Colors.black,
                    icon: Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                height: 30,
                width: 140,
                // color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '🔥',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '4-day streak',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w400),
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
