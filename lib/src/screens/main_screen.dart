import 'package:flutter/material.dart';
//paginas de navegacao
import '../pages/home_page.dart';
import '../pages/order_page.dart';
import '../pages/favorite.dart';
import '../pages/profile.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;


  @override
  void initState(){
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();
    pages = [homePage, orderPage, favoritePage, profilePage];
    currentPage = homePage;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
            currentPage =pages[index];
          });

        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,

        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
          title: Text("Principal"),
        ),

          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),
            title: Text("Compras"),
          ),

          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),
            title: Text("Favoritos"),
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person_outline),
            title: Text("Perfil"),
          ),
      ],
      ),
      body: currentPage ,
    );
  }
}
