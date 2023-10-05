import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/src/features/feature1/data_layer/services/get_all_products.dart';
import 'package:store_app/src/features/feature1/domain_layer/models/product_model.dart';
import 'package:store_app/src/features/feature1/presentation_layer/widgets/product_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text('New Trends', style: TextStyle(color: Colors.black),),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: (){},
                icon: const Icon(FontAwesomeIcons.cartShopping, color: Colors.black,),
              )
            ],
          ),

          body: FutureBuilder<List<ProductModel>>(
            future: AllProductsService().getAllProducts(),
            builder: (context, snapshot)
            {
              if (snapshot.hasData) {
                List<ProductModel> products = snapshot.data!;
                return Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 95),
                  child: GridView.builder(
                    itemCount: snapshot.data!.length,
                    clipBehavior: Clip.none,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.8,
                        mainAxisSpacing: 100,
                        crossAxisSpacing: 5
                    ),
                    itemBuilder: (context, index) {
                      return ProductCard(product: products[index],);
                    },
                  ),
                );
              }  else if (snapshot.hasError) {
                return const Text('Error');
              }  else {
                return Center(
                    child: CircularProgressIndicator(
                      color: Colors.orange,
                      strokeWidth: 6.0.sp,
                    ),
                );
              }
            },
          )
        )
    );
  }
}


