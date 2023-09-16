
import 'package:flutter/material.dart';

import '../utility/app_color.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
    return Card(
      elevation: 4,
      shadowColor: AppColor.primaryColor.withOpacity(0.1),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        width: 130,
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  image: DecorationImage(
                      image:NetworkImage(
                          'https://c.wallhere.com/photos/bd/48/nike_sneakers_shoes_clothing_style_sports-1102324.jpg!d'))),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Nike shoe AK50459049',
                    maxLines: 1,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$90',
                        style: TextStyle(
                            fontSize: 13,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.amber,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey),
                          ),
                        ],
                      ),
                      Card(
                        color: AppColor.primaryColor,
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.favorite_border,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  }

