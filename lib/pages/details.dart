// import 'package:flutter/material.dart';
// import 'package:food_delivery/widgets/widget_support.dart';

// class Details extends StatefulWidget {
//   const Details({super.key});

//   @override
//   State<Details> createState() => _DetailsState();
// }

// class _DetailsState extends State<Details> {
//   int a = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: Icon(
//                 Icons.arrow_back_ios_new_outlined,
//                 color: Colors.black,
//               ),
//             ),
//             Image.asset(
//               "images/salad2.png",
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height / 3,
//               fit: BoxFit.fill,
//             ),
//             SizedBox(
//               height: 13.0,
//             ),
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Mediterranean",
//                       style: AppWidget.SemiBoldTextFeildStyle(),
//                     ),
//                     Text(
//                       "chickpea salad",
//                       style: AppWidget.boldTextFieldStyle(),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 GestureDetector(
//                   onTap: () {
//                     if (a > 1) {
//                       --a;
//                     }

//                     setState(() {});
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(8)),
//                     child: Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 20.0,
//                 ),
//                 Text(
//                   a.toString(),
//                   style: AppWidget.SemiBoldTextFeildStyle(),
//                 ),
//                 SizedBox(
//                   width: 20.0,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     ++a;
//                     setState(() {});
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(8)),
//                     child: Icon(
//                       Icons.add,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Text(
//               " chickpea salad recipe is made with fresh vegetables, herbs, and a zesty lemon dressing. A delicious picnic side dish or lunch!",
//               maxLines: 3,
//               style: AppWidget.LightTextFeildStyle(),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Row(
//               children: [
//                 Text(
//                   "Delivery Time",
//                   style: AppWidget.boldTextFieldStyle(),
//                 ),
//                 Icon(
//                   Icons.alarm,
//                   color: Colors.black45,
//                 ),
//                 SizedBox(
//                   width: 5.0,
//                 ),
//                 Text(
//                   "30 min",
//                   style: AppWidget.boldTextFieldStyle(),
//                 ),
//               ],
//             ),
//             Spacer(),
//             Padding(
//               padding: const EdgeInsets.only(
//                 bottom: 40.0,
//               ),
//               child: Row(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "total price",
//                         style: AppWidget.boldTextFieldStyle(),
//                       ),
//                       Text(
//                         "\$28",
//                         style: AppWidget.boldTextFieldStyle(),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Center(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/salad2.png",
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.width / 1.2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 13.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mediterranean",
                      style: AppWidget.SemiBoldTextFeildStyle(),
                    ),
                    Text(
                      "chickpea salad",
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }

                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.SemiBoldTextFeildStyle(),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "This chickpea salad recipe is made with fresh vegetables, herbs, and a zesty lemon dressing. A delicious picnic side dish or lunch!",
              maxLines: 3,
              style: AppWidget.LightTextFeildStyle(),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: AppWidget.boldTextFieldStyle(),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Icon(
                  Icons.alarm,
                  color: Colors.black45,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  "30 min",
                  style: AppWidget.boldTextFieldStyle(),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 40.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                      Text(
                        "\$28",
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add to cart action
                    },
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text("Add to Cart"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
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
