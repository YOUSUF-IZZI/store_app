import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/src/features/feature1/domain_layer/models/product_model.dart';
import 'package:store_app/src/features/feature1/presentation_layer/pages/update_product_page.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductModel product ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
          return const UpdateProductPage();
        },),);
      },
      child: Stack(
        // to make the second child flow up the first one
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            //width: 180,
            //height: 90.h,
            child: Card(
              color: Colors.white,
              elevation: 8.0,
              child: Padding(
                padding: EdgeInsets.all(12.0.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.title.substring(0, 18), style: TextStyle(fontSize: 13.sp, color: Colors.grey[700]),),
                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$${product.price}', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),),
                        Icon(Icons.favorite, size: 20.sp,)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 20.w, top: -70.h,
            child: Image.network(
              product.image,
              height: 90.h, width: 90,
            ),
          ),
        ],
      ),
    );
  }
}