import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class bottomAppBar extends StatelessWidget {
  const bottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: 60.h,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.black,
                size: 25.r,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.grid_view_rounded,
                color: Colors.grey,
                size: 25.r,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.calendar_today_outlined,
                color: Colors.grey,
                size: 25.r,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.grey,
                size: 25.r,
              ),
            )
          ],
        ));
  }
}
