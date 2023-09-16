
import 'package:flutter/material.dart';

import '../utility/app_color.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.all(16),
            child: Icon(Icons.store,size:32,color: AppColor.primaryColor,),
            decoration: BoxDecoration(
                color: AppColor.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8)
            ),
          ),
          SizedBox(height: 8.0),
          Text("Electronics",style: TextStyle(
              fontSize: 15,
              letterSpacing: 0.4,
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold
          ),)

        ],
      ),
    );
  }
}
