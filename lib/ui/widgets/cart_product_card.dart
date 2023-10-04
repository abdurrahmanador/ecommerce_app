import 'package:ecommerce/ui/utility/app_color.dart';
import 'package:flutter/material.dart';

import 'custom_stepper.dart';

class cart_product_card extends StatelessWidget {
  const cart_product_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                image:DecorationImage(image: NetworkImage("https://th.bing.com/th/id/R.bc5c721e24af921444175e16611fc754?rik=k8ZDVwBDxdzACg&riu=http%3a%2f%2fpngimg.com%2fuploads%2fmen_shoes%2fmen_shoes_PNG7491.png&ehk=E22VI5vwmwqA9wj2dYvMZJf%2fr%2bNkD1e5tVfJ0qxChTU%3d&risl=&pid=ImgRaw&r=0"))


            ),
          ),
          SizedBox(width: 8,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          const Text(
                            "Bata New Shoe #AFA66",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          const Text(
                            "New Product",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          SizedBox(height: 4,),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                color: Colors.black38,
                              ),
                              children: [
                                TextSpan(text: "Color: Black"),
                                TextSpan(text: "Size: XL"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_outline)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$100",style: TextStyle(
                        color:AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(
                      width: 100,
                      child: FittedBox(
                        child: CustomStepper(
                            lowerLimit: 1,
                            upperLimit: 10,
                            stepValue: 1,
                            value: 1,
                            onChange: (newValue){
                              print(newValue);
                            }),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
