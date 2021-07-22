part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final User user = mockUser;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: defaultMargin),
          padding: EdgeInsets.symmetric(vertical: 26),
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/photo_border.png'))),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: NetworkImage(
                                (context.read<UserCubit>().state as UserLoaded)
                                    .user
                                    .picturePath),
                            fit: BoxFit.cover)),
                  )),
              SizedBox(
                height: 16,
              ),
              Text(
                (context.read<UserCubit>().state as UserLoaded).user.name,
                style: blackFontStyle2.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 6,
              ),
              Text((context.read<UserCubit>().state as UserLoaded).user.email,
                  style: greyFontStyle.copyWith(fontWeight: FontWeight.w300)),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              CustomTabBar(
                titles: ['Account', 'FoodMarket'],
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              (selectedIndex == 0)
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 17, horizontal: defaultMargin),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Edit Profile',
                                style: blackFontStyle2,
                              ),
                              Container(
                                  child: Icon(
                                Icons.navigate_next,
                                color: greyColor,
                                size: 30,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Home Address',
                                style: blackFontStyle2,
                              ),
                              Container(
                                  child: Icon(
                                Icons.navigate_next,
                                color: greyColor,
                                size: 30,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Security',
                                style: blackFontStyle2,
                              ),
                              Container(
                                  child: Icon(
                                Icons.navigate_next,
                                color: greyColor,
                                size: 30,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Payments',
                                style: blackFontStyle2,
                              ),
                              Container(
                                  child: Icon(
                                Icons.navigate_next,
                                color: greyColor,
                                size: 30,
                              ))
                            ],
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 17, horizontal: defaultMargin),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rate App',
                                style: blackFontStyle2,
                              ),
                              Container(
                                  child: Icon(
                                Icons.navigate_next,
                                color: greyColor,
                                size: 30,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Help Center',
                                style: blackFontStyle2,
                              ),
                              Container(
                                  child: Icon(
                                Icons.navigate_next,
                                color: greyColor,
                                size: 30,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Privacy & Policy',
                                style: blackFontStyle2,
                              ),
                              Container(
                                  child: Icon(
                                Icons.navigate_next,
                                color: greyColor,
                                size: 30,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Terms & Conditions',
                                style: blackFontStyle2,
                              ),
                              Container(
                                  child: Icon(
                                Icons.navigate_next,
                                color: greyColor,
                                size: 30,
                              ))
                            ],
                          ),
                        ],
                      ),
                    )
            ],
          ),
        )
      ],
    )));
  }
}
