import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class searchBar extends StatelessWidget {
  const searchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      // showCursor: true,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: Border(),
        focusedBorder: Border(),
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
        prefixIcon: Icon(
          Icons.search,
          size: 25.r,
          color: Color(0xff23AA49),
        ),
        hintText: "Search category",
        hintStyle: GoogleFonts.dmSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xff979899),
        ),
      ),
    );
  }

  OutlineInputBorder Border() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(67.r), borderSide: BorderSide.none);
  }
}
