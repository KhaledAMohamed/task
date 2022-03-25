
import 'package:flutter/material.dart';

import '../home/home.dart';
import '../stadium/stadium.dart';



class HomeNavBar extends StatefulWidget {
  //use pageView to passing between screens in home
   HomeNavBar({Key? key}) : super(key: key);

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  final PageController pageController = PageController();

   int selectedIndex = 0;
   String StadiumImage = 'assets/playground.png';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: PageView(
          controller: pageController,
          children: <Widget>[
            Home(),
            Stadium(),

          ],
          onPageChanged: (page)  {
          setState(() {
            if(page == 1)
              {
                StadiumImage ='assets/playground2.png';
              }
            else{
              StadiumImage = 'assets/playground.png';
            }
          selectedIndex = page;

          });

          }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (page) {

          setState(() {
            pageController.animateToPage(
              page,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          });

        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme :const  IconThemeData(color: Colors.greenAccent),
        selectedItemColor: Colors.greenAccent,
        unselectedIconTheme:const
        IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.black,
        items:  <BottomNavigationBarItem>[
         const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(StadiumImage),
            label: ''
          ),
         const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 35,
            ),
            label: '',
          ),
       const   BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 35,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
