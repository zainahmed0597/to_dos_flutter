import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/icon_button.dart';

class NewHabit extends StatefulWidget {
  const NewHabit({Key? key}) : super(key: key);

  @override
  State<NewHabit> createState() => _NewHabitState();
}

class _NewHabitState extends State<NewHabit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 165.0, vertical: 16),
              child: Column(
                children: const [
                  Divider(
                    thickness: 6,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Exercises heading
                      Row(
                        children: [
                          IconButtonWidget(
                            icon: Icons.close,
                            iconcolor: Colors.red,
                            color: Colors.pink[050],
                          ),
                          const SizedBox(
                            width: 52,
                          ),
                          Row(
                            children: [
                              Text(
                                'New ',
                                style: GoogleFonts.poppins(
                                    fontSize: 30, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Habit',
                                style: GoogleFonts.poppins(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[500]),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        'How often do you want to do it?',
                        style: GoogleFonts.poppins(
                            fontSize: 21, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[200],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 10.0),
                              child: Text(
                                'Daily',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 22.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 10.0),
                              child: Text(
                                'Weekly',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Every',
                        style: GoogleFonts.poppins(
                            fontSize: 21, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[200],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 16.0),
                              child: Icon(Iconsax.minus),
                            ),
                          ),
                          const SizedBox(
                            width: 22.0,
                          ),
                          Text(
                            '1 week',
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 22.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 16.0),
                              child: Icon(
                                Iconsax.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Divider(),
                      Text(
                        'In which time pf the day would you like to do it?',
                        style: GoogleFonts.poppins(
                            fontSize: 21, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[200],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 10.0),
                              child: Text(
                                '☀️ Morning',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 22.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.indigo[900],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 10.0),
                              child: Text(
                                '🌙 Night',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            gradient: const LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [
                                0.1,
                                0.5,
                                1,
                              ],
                              colors: [
                                Color.fromARGB(255, 243, 243, 243),
                                Color(0xFFF8BBD0),
                                Color.fromARGB(255, 251, 255, 149),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Create',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
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
