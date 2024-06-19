import 'package:flutter/material.dart';
import 'package:food_delivery/pages/details.dart';
import 'package:food_delivery/widgets/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Parv,",
                    style: AppWidget.boldTextFieldStyle(),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text("Delicious Food", style: AppWidget.HeadlineTextFeildStyle()),
              Text("Discover and great taste food",
                  style: AppWidget.LightTextFeildStyle()),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: ShowItem(),
              ),
              SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildFoodItem("Veggies Taco Hash", "Fresh and Healthy",
                        "\$25", "images/salad2.png"),
                    SizedBox(width: 15.0),
                    buildFoodItem("Mix Veg Salad", "Spicy with the onion",
                        "\$25", "images/salad2.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 300, // Set a height to enable scrolling
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      buildFoodDetails("Mild spiced salad",
                          "Honey cheese sandwich", "\$10", "images/salad2.png"),
                      SizedBox(height: 20.0),
                      buildFoodDetails("Classic Burger", "With cheddar cheese",
                          "\$15", "images/salad2.png"),
                      SizedBox(height: 20.0),
                      buildFoodDetails("Fruit Salad", "Fresh mixed fruits",
                          "\$12", "images/salad2.png"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ShowItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildCategoryItem("images/pizza.png", pizza, () {
          setState(() {
            pizza = true;
            icecream = false;
            burger = false;
            salad = false;
          });
        }),
        buildCategoryItem("images/icecream.png", icecream, () {
          setState(() {
            pizza = false;
            icecream = true;
            burger = false;
            salad = false;
          });
        }),
        buildCategoryItem("images/burger.png", burger, () {
          setState(() {
            pizza = false;
            icecream = false;
            burger = true;
            salad = false;
          });
        }),
        buildCategoryItem("images/salad.png", salad, () {
          setState(() {
            pizza = false;
            icecream = false;
            burger = false;
            salad = true;
          });
        }),
      ],
    );
  }

  Widget buildCategoryItem(
      String imagePath, bool isSelected, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(8),
          child: Image.asset(
            imagePath,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget buildFoodItem(
      String title, String subtitle, String price, String imagePath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
      child: Container(
        margin: EdgeInsets.all(4),
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: Image.asset(
                    imagePath,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(title, style: AppWidget.SemiBoldTextFeildStyle()),
                SizedBox(
                  height: 5.0,
                ),
                Text(subtitle, style: AppWidget.LightTextFeildStyle()),
                SizedBox(
                  height: 5.0,
                ),
                Text(price, style: AppWidget.SemiBoldTextFeildStyle()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFoodDetails(
      String title, String subtitle, String price, String imagePath) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.asset(
                  imagePath,
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Text(
                      title,
                      style: AppWidget.SemiBoldTextFeildStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Text(
                      subtitle,
                      style: AppWidget.LightTextFeildStyle(),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Text(
                      price,
                      style: AppWidget.SemiBoldTextFeildStyle(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




























// import 'package:flutter/material.dart';
// import 'package:food_delivery/pages/details.dart';
// import 'package:food_delivery/widgets/widget_support.dart';

// class home extends StatefulWidget {
//   const home({super.key});

//   @override
//   State<home> createState() => _homeState();
// }

// class _homeState extends State<home> {
//   bool icecream = false, pizza = false, salad = false, burger = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: const EdgeInsets.only(top: 50.0, left: 20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Hello Parv,",
//                   style: AppWidget.boldTextFieldStyle(),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(right: 20.0),
//                   padding: EdgeInsets.all(3),
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Icon(
//                     Icons.shopping_cart_outlined,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Text("Delicious Food", style: AppWidget.HeadlineTextFeildStyle()),
//             Text("Discover and great taste food",
//                 style: AppWidget.LightTextFeildStyle()),
//             SizedBox(
//               height: 20.0,
//             ),
//             Container(margin: EdgeInsets.only(right: 20.0), child: ShowItem()),
//             SizedBox(
//               height: 30.0,
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => Details()));
//                     },
//                     child: Container(
//                       margin: EdgeInsets.all(4),
//                       child: Material(
//                         elevation: 5.0,
//                         borderRadius: BorderRadius.circular(20),
//                         child: Container(
//                           padding: EdgeInsets.all(14),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Image.asset(
//                                 "images/salad2.png",
//                                 height: 150,
//                                 width: 150,
//                                 fit: BoxFit.cover,
//                               ),
//                               Text("Veggies Taco Hash",
//                                   style: AppWidget.SemiBoldTextFeildStyle()),
//                               SizedBox(
//                                 height: 5.0,
//                               ),
//                               Text("Fresh and Healthy",
//                                   style: AppWidget.LightTextFeildStyle()),
//                               SizedBox(
//                                 height: 5.0,
//                               ),
//                               Text("\$25",
//                                   style: AppWidget.SemiBoldTextFeildStyle()),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 15.0,
//                   ),
//                   Container(
//                     margin: EdgeInsets.all(4),
//                     child: Material(
//                       elevation: 5.0,
//                       borderRadius: BorderRadius.circular(20),
//                       child: Container(
//                         padding: EdgeInsets.all(14),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Image.asset(
//                               "images/salad2.png",
//                               height: 150,
//                               width: 150,
//                               fit: BoxFit.cover,
//                             ),
//                             Text("Mix Veg Salad",
//                                 style: AppWidget.SemiBoldTextFeildStyle()),
//                             SizedBox(
//                               height: 5.0,
//                             ),
//                             Text("Spicy with the onion",
//                                 style: AppWidget.LightTextFeildStyle()),
//                             SizedBox(
//                               height: 5.0,
//                             ),
//                             Text("\$25",
//                                 style: AppWidget.SemiBoldTextFeildStyle()),
//                           ],
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Container(
//               margin: EdgeInsets.only(right: 10.0),
//               child: Material(
//                 elevation: 5.0,
//                 borderRadius: BorderRadius.circular(20),
//                 child: Container(
//                   padding: EdgeInsets.all(5),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Image.asset(
//                         "images/salad2.png",
//                         height: 120,
//                         width: 120,
//                         fit: BoxFit.cover,
//                       ),
//                       SizedBox(
//                         width: 20.0,
//                       ),
//                       Column(
//                         children: [
//                           Container(
//                             width: MediaQuery.of(context).size.width / 2,
//                             child: Text(
//                               "Mild spiced salad",
//                               style: AppWidget.SemiBoldTextFeildStyle(),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 5.0,
//                           ),
//                           Container(
//                             width: MediaQuery.of(context).size.width / 2,
//                             child: Text(
//                               "Honey cheese sandwich",
//                               style: AppWidget.LightTextFeildStyle(),
//                             ),
//                           ),
//                           Container(
//                             width: MediaQuery.of(context).size.width / 2,
//                             child: Text(
//                               "\$10",
//                               style: AppWidget.SemiBoldTextFeildStyle(),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget ShowItem() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         GestureDetector(
//           onTap: () {
//             pizza = true;
//             icecream = false;
//             burger = false;
//             salad = false;
//             setState(() {});
//           },
//           child: Material(
//             elevation: 5.0,
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: pizza ? Colors.black : Colors.white,
//                   borderRadius: BorderRadius.circular(10)),
//               padding: EdgeInsets.all(8),
//               child: Image.asset(
//                 "images/pizza.png",
//                 height: 40,
//                 width: 40,
//                 fit: BoxFit.cover,
//                 color: pizza ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             pizza = false;
//             icecream = true;
//             burger = false;
//             salad = false;
//             setState(() {});
//           },
//           child: Material(
//             elevation: 5.0,
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: icecream ? Colors.black : Colors.white,
//                   borderRadius: BorderRadius.circular(10)),
//               padding: EdgeInsets.all(8),
//               child: Image.asset(
//                 "images/icecream.png",
//                 height: 40,
//                 width: 40,
//                 fit: BoxFit.cover,
//                 color: icecream ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             pizza = false;
//             icecream = false;
//             burger = true;
//             salad = false;
//             setState(() {});
//           },
//           child: Material(
//             elevation: 5.0,
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: burger ? Colors.black : Colors.white,
//                   borderRadius: BorderRadius.circular(10)),
//               padding: EdgeInsets.all(8),
//               child: Image.asset(
//                 "images/burger.png",
//                 height: 40,
//                 width: 40,
//                 fit: BoxFit.cover,
//                 color: burger ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             pizza = false;
//             icecream = false;
//             burger = false;
//             salad = true;
//             setState(() {});
//           },
//           child: Material(
//             elevation: 5.0,
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: salad ? Colors.black : Colors.white,
//                   borderRadius: BorderRadius.circular(10)),
//               padding: EdgeInsets.all(8),
//               child: Image.asset(
//                 "images/salad.png",
//                 height: 40,
//                 width: 40,
//                 fit: BoxFit.cover,
//                 color: salad ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
