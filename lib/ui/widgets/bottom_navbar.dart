part of 'widgets.dart';

class BottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  BottomNavbar({this.onTap, this.selectedIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/ic_home' +
                          ((selectedIndex == 0) ? '.png' : '_normal.png')),
                      fit: BoxFit.contain),
                )),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 83),
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/ic_order' +
                          ((selectedIndex == 1) ? '.png' : '_normal.png')),
                      fit: BoxFit.contain),
                )),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/ic_profile' +
                          ((selectedIndex == 2) ? '.png' : '_normal.png')),
                      fit: BoxFit.contain),
                )),
          )
        ],
      ),
    );
  }
}
