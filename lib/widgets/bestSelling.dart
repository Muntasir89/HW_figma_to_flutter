import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class bestSellingHeader extends StatelessWidget {
  const bestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Best Selling 🔥",
          style: GoogleFonts.dmSans(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xff06161C),
          ),
        ),
        Text(
          "See all",
          style: GoogleFonts.dmSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff23AA49),
          ),
        ),
      ],
    );
  }
}
