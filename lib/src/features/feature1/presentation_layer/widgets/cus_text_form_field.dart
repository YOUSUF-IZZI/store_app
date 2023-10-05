import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({Key? key, this.inputType}) : super(key: key);
  final TextInputType? inputType ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      cursorWidth: 3.0.sp,
      cursorColor: Colors.black,

      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                  color: Colors.grey,
                  width: 3.0.sp
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                  color: Colors.orange,
                  width: 3.sp
              )
          ),
      ),
    );
  }
}
