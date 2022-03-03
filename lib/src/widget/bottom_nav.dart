import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    switch (index) {
      case 0:
        push(CategoryScreen(), CategoryProvider());
        break;
      case 1:
        push(LoginScreen(), LoginProvider());
        break;
      case 2:
        push(OrdersScreen(), OrdersProvider());
        break;
      case 3:
        push(CartScreen(), CartProvider());
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(12),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedIconTheme: const IconThemeData(color: Colors.black26),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: selectedIndex == 0
                ? Container(
                    width: getWidth(10),
                    height: getWidth(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: mainGreen),
                      borderRadius: BorderRadius.circular(
                        getWidth(3),
                      ),
                      color: mainGreen,
                    ),
                    child: Image.asset(
                      getImage("navigationBar/home.png"),
                      color: Colors.white,
                    ),
                  )
                : Image.asset(
                    getImage("navigationBar/home.png"),
                    width: getWidth(8),
                    height: getHeight(8),
                  ),
            label: '',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 1
                ? Container(
                    width: getWidth(10),
                    height: getWidth(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: mainGreen),
                      borderRadius: BorderRadius.circular(
                        getWidth(3),
                      ),
                      color: mainGreen,
                    ),
                    child: Image.asset(
                      getImage("navigationBar/profile.png",),
                      color: Colors.white,
                    ),
                  )
                : Image.asset(
                    getImage("navigationBar/profile.png"),
                    width: getWidth(6),
                    height: getHeight(6),
                  ),
            label: '',
            // backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 2
                ? Container(
                    width: getWidth(10),
                    height: getWidth(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: mainGreen),
                      borderRadius: BorderRadius.circular(
                        getWidth(3),
                      ),
                      color: mainGreen,
                    ),
                    child: Image.asset(
                      getImage("navigationBar/orders.png"),
                      color: Colors.white,
                    ),
                  )
                : Image.asset(
                    getImage("navigationBar/orders.png"),
                    width: getWidth(8),
                    height: getHeight(8),
                  ),
            label: '',
            // backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 3
                ? Container(
                    width: getWidth(10),
                    height: getWidth(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: mainGreen),
                      borderRadius: BorderRadius.circular(
                        getWidth(3),
                      ),
                      color: mainGreen,
                    ),
                    child: Image.asset(
                      getImage("navigationBar/cart.png"),
                      color: Colors.white,
                    ),
                  )
                : Image.asset(
                    getImage("navigationBar/cart.png"),
                    width: getWidth(8),
                    height: getHeight(8),
                  ),
            label: '',
            // backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: selectedIndex,
        selectedIconTheme: const IconThemeData(color: mainGreen),
        onTap: _onItemTapped,
      ),
    );
  }
}
