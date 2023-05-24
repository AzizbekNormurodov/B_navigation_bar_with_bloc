

import 'package:battom_navigator_bar_with_bloc/bloc/navigation_bar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/basket_page.dart';
import 'pages/home_page.dart';
import 'pages/my_order_page.dart';
import 'pages/profile_page.dart';
import 'theme/theme_app.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
     theme: lightTheme,
      home: BlocProvider(
        create: (_) => NavigationBarBloc(),
        child: const MainPage(),
      ),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBarBloc,NavigationBarState>(
        builder: (context,state) {
          return  IndexedStack(
            index: state.menu.index,//1
            children:  [
              HomePage(),
              BasketPage(),
              MyOrderPage(),
              ProfilePage(),
            ],
          );
        }
      ),
      bottomNavigationBar: BlocBuilder<NavigationBarBloc, NavigationBarState>(
          builder: (context, state) {
            return BottomNavigationBar(
              currentIndex: state.menu.index,
              onTap: (index) =>changeTap(index),

              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled, color: Colors.black,),
                  label: 'Главная,',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart, color: Colors.black),
                  label: 'Корзина',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag, color: Colors.black),
                  label: 'Мои заказы',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black), label: "Profile"),
              ],
            );
          }
      ),
    );
  }

  void changeTap(int index) {
    if (index == context
        .read<NavigationBarBloc>()
        .state
        .menu
        .index) return;

    context
        .read<NavigationBarBloc>().add(TabChangedEvent (index: BottomMenu.values[index]));
  }
}