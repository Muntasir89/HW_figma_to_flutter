import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class bestSellings extends StatelessWidget {
  bestSellings({super.key});

  List<List<String>> bestSellingList = [
    ["assets/bell_papper.png", "Bell Pepper Red", "1kg, 4\$"],
    ["assets/lamb_meat.png", "Lamb Meat", "1kg, 45\$"]
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      child: AlignedGridView.count(
        itemCount: bestSellingList.length,
        crossAxisCount: 2,
        mainAxisSpacing: 8.h,
        crossAxisSpacing: 8.w,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
                color: Color(0xffF3F5F7),
                borderRadius: BorderRadius.circular(16.r)),
            child: Column(
              children: [
                Image.asset(
                  bestSellingList[index][0],
                  height: 100,
                  width: 100,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    bestSellingList[index][1],
                    style: GoogleFonts.dmSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff1B1C1E),
                    ),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bestSellingList[index][2],
                        style: GoogleFonts.dmSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFF324B),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xff23AA49),
                          shape: CircleBorder(),
                        ),
                        // color: Color(0xff23AA49),
                      )
                    ])
              ],
            ),
          );
        },
      ),
    );
  }
}
