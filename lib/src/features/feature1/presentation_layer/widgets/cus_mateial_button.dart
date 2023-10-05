import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CusMaterialButton extends StatelessWidget {
  const CusMaterialButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      color: const Color(0xFFF4F4F4),
      highlightColor: Colors.orangeAccent,
      splashColor: Colors.redAccent,
      onPressed: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          SizedBox(width: 8.w,),
          Text('Update', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, color: const Color(0xFF0E0F12)), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
