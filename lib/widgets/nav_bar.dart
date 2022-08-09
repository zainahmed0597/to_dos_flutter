import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  NavBarState createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(25),
      height: screenWidth * .200,
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
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: screenWidth * .01),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
              HapticFeedback.lightImpact();
            });
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Stack(
            children: [
              SizedBox(
                width: screenWidth * .2125,
                child: Center(
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? screenWidth * .12 : 0,
                    width: index == currentIndex ? screenWidth * .12 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Colors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Container(
                width: screenWidth * .2125,
                alignment: Alignment.center,
                child: Icon(
                  listOfIcons[index],
                  size: screenWidth * .076,
                  color: index == currentIndex ? Colors.black : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Iconsax.home,
    Iconsax.graph,
    Iconsax.menu4,
    Iconsax.setting,
  ];
}
