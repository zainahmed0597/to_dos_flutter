import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

demoDates(String day, String date, bool isSelected) {
  return isSelected
      ? Container(
          margin: const EdgeInsets.only(right: 25),
          padding: const EdgeInsets.all(7),
          width: 65,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 6),
                child: Text(
                  day,
                  style: GoogleFonts.catamaran(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(1),
                child: Text(
                  date,
                  style: GoogleFonts.catamaran(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        )
      : Container(
          margin: const EdgeInsets.only(right: 25),
          padding: const EdgeInsets.all(7),
          width: 65,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(1),
                child: Text(
                  day,
                  style: GoogleFonts.catamaran(
                      color: Colors.black26,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(1),
                child: Text(
                  date,
                  style: GoogleFonts.catamaran(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        );
}
