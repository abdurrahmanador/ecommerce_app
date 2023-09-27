import 'package:ecommerce/presentation/state_holders/state_holder_controller.dart';
import 'package:ecommerce/ui/screens/home_screen.dart';
import 'package:ecommerce/ui/widgets/custom_stepper.dart';
import 'package:ecommerce/ui/widgets/product_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/app_color.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<Color> colors = [
    Colors.deepPurple,
    Colors.orange,
    Colors.amber,
    Colors.black54,
    Colors.blue,
  ];

  List<String> sizes=[
    "S",
    "M",
    "L",
    "XL",
    "2XL"
  ];
  int _selectedColors = 0;
  int _selectedSizes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                ProductImageSlider(),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: BackButton(
                    color: Colors.black54,
                    onPressed: () {
                      Get.find<MainBottomNavController>().backToHome();
                      Get.offAll(() => HomeScreen());
                    },
                  ),
                  title: Text(
                    "Details",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Adidas Shoe #574SA545- ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          CustomStepper(
                              lowerLimit: 1,
                              upperLimit: 10,
                              stepValue: 1,
                              value: 1,
                              onChange: (newValue) {
                                print(newValue);
                              })
                        ],
                      ),
                      Row(
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: Colors.amber,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blueGrey),
                              ),
                              TextButton(
                                child: Text(
                                  'Review',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Card(
                            color: AppColor.primaryColor,
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.favorite_border,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Color",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        height: 28,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: colors.length,
                          itemBuilder: (context,index){
                            return InkWell(
                              onTap: (){
                                _selectedColors=index;
                                if(mounted){
                                  setState(() {
                                  });
                                }
                              },
                              child: CircleAvatar(
                                backgroundColor: colors[index],
                                child:_selectedColors==index?Icon(Icons.done,color: Colors.white,):null
                              ),
                            );
                          },
                        ),
                      ),

                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Size",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        height: 28,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: sizes.length,
                          itemBuilder: (context,index){
                            return InkWell(
                              onTap: (){
                                _selectedSizes=index;
                                if(mounted){
                                  setState(() {
                                  });
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: Colors.grey),
                                  color: _selectedSizes==index?(AppColor.primaryColor ):null
                                ),
                                alignment: Alignment.center,
                                child: Text(sizes[index]),
                              ),
                            );
                          }, separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: 8,);
                        },
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        '''
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Leo a diam sollicitudin tempor id eu nisl nunc mi. Id diam maecenas ultricies mi eget. Quis commodo odio aenean sed adipiscing. Et netus et malesuada fames. Fusce ut placerat orci nulla pellentesque dignissim enim sit amet. Magna eget est lorem ipsum dolor sit amet consectetur adipiscing. Sagittis id consectetur purus ut faucibus pulvinar elementum integer enim. In nibh mauris cursus mattis molestie a. Mollis nunc sed id semper risus in hendrerit gravida.

Ante in nibh mauris cursus mattis molestie a iaculis. Gravida dictum fusce ut placerat. At tempor commodo ullamcorper a lacus vestibulum. Nunc aliquet bibendum enim facilisis gravida neque convallis. Blandit cursus risus at ultrices. Consectetur a erat nam at lectus urna. Convallis tellus id interdum velit laoreet id donec ultrices. Maecenas sed enim ut sem viverra aliquet. Fermentum et sollicitudin ac orci phasellus. Vitae auctor eu augue ut lectus. Amet consectetur adipiscing elit ut aliquam purus sit. Amet tellus cras adipiscing enim eu turpis. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Adipiscing elit ut aliquam purus sit amet luctus. Diam volutpat commodo sed egestas egestas. Facilisi etiam dignissim diam quis enim. Odio euismod lacinia at quis risus sed vulputate odio.

Pellentesque pulvinar pellentesque habitant morbi tristique senectus et. Velit scelerisque in dictum non consectetur. Phasellus faucibus scelerisque eleifend donec. Magna fermentum iaculis eu non. Dignissim enim sit amet venenatis urna cursus eget. Tincidunt eget nullam non nisi est. In pellentesque massa placerat duis ultricies. Sit amet risus nullam eget felis. Sollicitudin ac orci phasellus egestas tellus rutrum. Ante metus dictum at tempor commodo ullamcorper a.

Quis eleifend quam adipiscing vitae proin. Phasellus egestas tellus rutrum tellus pellentesque eu. Consectetur adipiscing elit duis tristique sollicitudin nibh sit. Semper feugiat nibh sed pulvinar proin gravida hendrerit lectus a. Feugiat nisl pretium fusce id velit ut tortor pretium viverra. Egestas integer eget aliquet nibh praesent tristique magna sit. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Fames ac turpis egestas maecenas pharetra convallis. Arcu cursus euismod quis viverra nibh cras pulvinar. Faucibus a pellentesque sit amet porttitor eget. Adipiscing elit pellentesque habitant morbi tristique senectus. Sit amet justo donec enim. Vestibulum lectus mauris ultrices eros. Feugiat pretium nibh ipsum consequat nisl vel pretium lectus quam. Risus nec feugiat in fermentum posuere. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. In massa tempor nec feugiat. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit aliquam. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet. Augue interdum velit euismod in pellentesque massa placerat.

                        '''
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              decoration: BoxDecoration(
                color: AppColor.primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight:Radius.circular(16))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Price",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16
                      ),),
                      Text("\$1,000",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor,
                          fontSize: 20
                      ),),
                    ],
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(onPressed: (){}, child:Text("Add To Cart",style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                    ),),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
