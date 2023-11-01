import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class backgournd extends StatelessWidget {
  const backgournd({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomBGShape(),
      child: Container(
        height: 300.h,
        width: 1.sw,
        color: Color(0xffF3F5F7),
      ),
    );
  }
}

class CustomBGShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, h - 40.h);
    path.quadraticBezierTo(w * 0.25, h, w / 2, h);
    path.quadraticBezierTo(w * 0.75, h, w, h - 40.h);
    // path.quadraticBezierTo(w * 0.5, h + 100, w, h);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
