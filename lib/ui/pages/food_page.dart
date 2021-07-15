part of 'pages.dart';

class FoodPage extends StatefulWidget {
  FoodPage({Key key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            //// Header
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 108,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "FoodMarket",
                        style: blackFontStyle1,
                      ),
                      Text(
                        "Let's get some foods",
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://trenzindonesia.com/wp-content/uploads/2019/12/Kezia-SB.jpg"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),

            //// List Food Horizontal
            Container(
              height: 258,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockFoods
                        .map((e) => Padding(
                            padding: EdgeInsets.only(
                                left:
                                    (e == mockFoods.first) ? defaultMargin : 0,
                                right: defaultMargin),
                            child: FoodCard(e)))
                        .toList(),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['New Taste', 'Popular', 'Recomended'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Builder(builder: (_) {
                    List<Food> foods = (selectedIndex == 0)
                        ? mockFoods
                        : (selectedIndex == 1)
                            ? 'Popular Body'
                            : 'Recomended Body';
                    return Column(
                      children: foods
                          .map((e) => Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    defaultMargin, 0, defaultMargin, 16),
                                child: FoodListItem(
                                    food: e, itemWidth: listItemWidth),
                              ))
                          .toList(),
                    );
                  }),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            )
            //// List Foot Vertical
          ],
        )
      ],
    );
  }
}
