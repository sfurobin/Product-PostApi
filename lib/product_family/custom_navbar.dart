import 'package:flutter/material.dart';


import '../bu_first_page.dart';
import '../bu_second_page.dart';
import 'fist_page.dart';
import 'second_page.dart';
import 'third_page.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({Key? key}) : super(key: key);

  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

late PageController _pageController;
int _pageIndex =1;
late List<Widget> _screenList;

class _CustomNavbarState extends State<CustomNavbar> {
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _screenList = [
      FistPage(),
      SecondPage(),
      ThirdPage(),
      BurgerHomePage(),
      AddtoCart(),

    ];
  }

  _setPage(int index) {
    setState(() {
      _pageController.jumpToPage(index);
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (_pageIndex != 1) {
            _setPage(1);
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          backgroundColor: Colors.grey[500],
          bottomNavigationBar: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Row(
              children: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.work_outline),
                    isselect: _pageIndex == 0,
                    onTap: () => _setPage(0)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.lock),
                    isselect: _pageIndex == 1,
                    onTap: () => _setPage(1)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart),
                    isselect: _pageIndex == 2,
                    onTap: () => _setPage(2)),
                BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                    isselect: _pageIndex == 3,
                    onTap: () => _setPage(3)),
                BottomNavigationBarItem(
                icon: Icon(Icons.person),
                    isselect: _pageIndex == 4,
                    onTap: () => _setPage(4)),
              ],
            ),
          ),
          body: PageView.builder(
              controller: _pageController,
              itemCount: _screenList.length,
              physics: ScrollPhysics(),
              itemBuilder: (context, index){
                return _screenList[index];
              }),
        ));
  }
}

class BottomNavigationBarItem extends StatelessWidget {
  final icon;
  final bool isselect;
  late Function() onTap;
  BottomNavigationBarItem(
      {Key? key, this.icon, required this.isselect, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
            onTap: () {
              onTap();
            },
            child:
              icon,
            )
    );
  }
}
