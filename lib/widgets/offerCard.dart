import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class offerCard extends StatelessWidget {
  const offerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 158.h,
      width: double.infinity,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        image: const DecorationImage(
            image: AssetImage(
                "assets/offer_pic.png"), // Replace with your own image
            fit: BoxFit.cover,
            scale: 1.0),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return ClipPath(
          clipper: CustomCardShape(),
          child: Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth / 2,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xff23AA49),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Ramadan Offers",
                  style: GoogleFonts.dmSans(
                    fontSize: 12.sp,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffffff).withOpacity(0.8),
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "Get 25%",
                  style: GoogleFonts.dmSans(
                    fontSize: 32.sp,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffffff),
                  ),
                ),
                SizedBox(height: 5.h),
                Container(
                  height: 30.h,
                  width: 107.w,
                  decoration: BoxDecoration(
                    color: Color(0xffffffffff),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Grab Offer",
                        style: GoogleFonts.dmSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6BA821),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Color(0xff6BA821),
                        weight: 500,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

class CustomCardShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.moveTo(w, 0);
    path.lineTo(0.1 * w, 0);
    path.quadraticBezierTo(0, h * 0.25, 0, h / 2);
    path.quadraticBezierTo(0, h * 0.75, 0.1 * w, h);
    // path.quadraticBezierTo(w * 0.5, h + 100, w, h);
    path.lineTo(w, h);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
