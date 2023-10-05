import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/src/features/feature1/presentation_layer/widgets/cus_mateial_button.dart';
import 'package:store_app/src/features/feature1/presentation_layer/widgets/cus_text_form_field.dart';


class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black, size: 25.sp,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Update Product', style: TextStyle(color: Colors.black, fontSize: 16.sp),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),

        body: Padding(
          padding: EdgeInsets.all(20.0.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50.h,),
                Text('Product Name', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),),
                SizedBox(height: 5.h,),
                const CustomTextFieldWidget(),
                SizedBox(height: 10.h,),

                Text('Description', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),),
                SizedBox(height: 5.h,),
                const CustomTextFieldWidget(),
                SizedBox(height: 10.h,),

                Text('Price', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),),
                SizedBox(height: 5.h,),
                const CustomTextFieldWidget(inputType: TextInputType.number),
                SizedBox(height: 10.h,),
                Text('image', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),),
                SizedBox(height: 5.h,),
                const CustomTextFieldWidget(),
                SizedBox(height: 50.h,),

                const CusMaterialButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
