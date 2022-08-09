import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_dos/screens/new_habit.dart';

import '../widgets/active_activity.dart';
import '../widgets/demodates.dart';
import '../widgets/icon_button.dart';
import '../widgets/nav_bar.dart';
import '../widgets/toggle_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const NavBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  // Menu , title and emoji icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButtonWidget(
                        icon: Icons.menu,
                        iconcolor: Colors.black,
                        color: Colors.grey[200],
                      ),
                      const Spacer(),
                      Text(
                        'Saber',
                        style: GoogleFonts.poppins(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.blue,
                              Colors.white,
                            ],
                          ),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            '🤩',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // Calender timeline
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25),
              height: 85,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  demoDates("Mon", "16", true),
                  demoDates("Tue", "17", false),
                  demoDates("Wed", "18", false),
                  demoDates("Thr", "19", false),
                  demoDates("Fri", "20", false),
                  demoDates("Sat", "21", false),
                  demoDates("Sun", "22", false),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const ToggleButton(),
            const SizedBox(
              height: 35,
            ),
            const ActiveActivity(),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewHabit()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                  ),
                  height: 55,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.add),
                      Text(
                        'Add more',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w400),
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
