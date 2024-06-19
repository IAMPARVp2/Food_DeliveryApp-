import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home.dart';
import 'package:food_delivery/pages/order.dart';
import 'package:food_delivery/pages/profile.dart';
import 'package:food_delivery/pages/wallet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;
  @override
  void initState() {
    homepage = Home();
    order = Order();
    profile = Profile();
    wallet = Wallet();
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 250),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ), // Icon
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:food_delivery/pages/home.dart';
// import 'package:food_delivery/pages/order.dart';
// import 'package:food_delivery/pages/profile.dart';
// import 'package:food_delivery/pages/wallet.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key});

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   int currentTabIndex = 0;

//   late List<Widget> pages;
//   late Widget currentPage;
//   late Home homepage;
//   late Profile profile;
//   late Order order;
//   late Wallet wallet;
//   @override
//   void initState() {
//     homepage = Home();
//     order = Order();
//     profile = Profile();
//     wallet = Wallet();
//     pages = [homepage, order, wallet, profile];
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CurvedNavigationBar(
//         height: 65,
//         backgroundColor: Colors.white,
//         color: Colors.black,
//         animationDuration: Duration(milliseconds: 250),
//         onTap: (int index) {
//           setState(() {
//             currentTabIndex = index;
//           });
//         },
//         items: const [
//           Icon(
//             Icons.home_outlined,
//             color: Colors.white,
//           ), // Icon
//           Icon(
//             Icons.shopping_bag_outlined,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.wallet_outlined,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.person_outline,
//             color: Colors.white,
//           ),
//         ],
//       ),
//       body: pages[currentTabIndex],
//     );
//   }
// }
