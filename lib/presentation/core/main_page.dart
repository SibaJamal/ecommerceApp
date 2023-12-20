import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/auth/auth_bloc.dart';
import '../../application/cart/cart_bloc.dart';
import '../cart/cart_page.dart';
import '../home/home_page.dart';
import '../profile/account_page.dart';
import '../search/search_page.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPageIndex = 0;
  @override
  void initState() {
    BlocProvider.of<AuthBloc>(context)
        .add(const AuthEvent.authCheckedRequested());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPageIndex = value;
                });
              },
              children: const [
                HomePage(),
                SearchPage(),
                CartPage(),
                ProfilePage(),
              ],
            ),
          ),
          bottomNavigationBar: NavigationBarTheme(
            data: const NavigationBarThemeData(
              indicatorColor: Colors.white,
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
            ),
            child: NavigationBar(
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                NavigationDestination(
                    icon: Icon(Icons.search), label: "Explore"),
                NavigationDestination(
                    icon: Icon(Icons.shopping_cart), label: "Cart"),
                NavigationDestination(
                    icon: Icon(Icons.account_circle), label: "Account"),
              ],
              selectedIndex: currentPageIndex,
              onDestinationSelected: (index) => setState(() {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(microseconds: 500),
                  curve: Curves.ease,
                );
              }),
              backgroundColor: Colors.white,
            ),
          )),
    );
  }
}
