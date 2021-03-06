part of 'pages.dart';

class FoodDetailPage extends StatefulWidget {
  final Function onBackButtonPressed;
  final Transaction transaction;

  FoodDetailPage({this.onBackButtonPressed, this.transaction});
  @override
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor,
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          SafeArea(
              child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.transaction.food.picturePath),
                    fit: BoxFit.cover)),
          )),
          SafeArea(
            child: ListView(
              children: [
                //// back button
                Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          if (widget.onBackButtonPressed != null) {
                            widget.onBackButtonPressed();
                          }
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black12,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/back_arrow_white.png'))),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          //// Body
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 280),
            padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //// food name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.transaction.food.name,
                          style: blackFontStyle2,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        //// rating
                        RatingStars(widget.transaction.food.rate)
                      ],
                    ),
                    Row(
                      children: [
                        //// button min
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              this.quantity = max(1, quantity - 1);
                            });
                          },
                          child: Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(width: 1),
                                image: DecorationImage(
                                    image: AssetImage('assets/btn_min.png'))),
                          ),
                        ),
                        //// quantity
                        SizedBox(
                          width: 50,
                          child: Text(
                            quantity.toString(),
                            textAlign: TextAlign.center,
                            style: blackFontStyle2,
                          ),
                        ),
                        //// button add
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              this.quantity = min(999, quantity + 1);
                            });
                          },
                          child: Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(width: 1),
                                image: DecorationImage(
                                    image: AssetImage('assets/btn_add.png'))),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                //// descriptions
                Text(
                  widget.transaction.food.description,
                  style: greyFontStyle,
                ),
                SizedBox(
                  height: 16,
                ),
                //// ingredients
                Text(
                  'Ingredients :',
                  style: blackFontStyle3,
                ),
                Text(
                  widget.transaction.food.ingredients,
                  style: greyFontStyle,
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price :',
                            style: greyFontStyle.copyWith(fontSize: 13),
                          ),
                          Text(
                            NumberFormat.currency(
                                    locale: 'id - ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(
                              quantity * widget.transaction.food.price,
                            ),
                            style: blackFontStyle2.copyWith(fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(
                          width: 163,
                          height: 45,
                          child: RaisedButton(
                            onPressed: () {
                              Get.to(PaymentPage(
                                transaction: widget.transaction.copyWith(
                                    quantity: this.quantity,
                                    total: quantity *
                                        widget.transaction.food.price),
                              ));
                            },
                            elevation: 0,
                            color: mainColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              'Order Now',
                              style: blackFontStyle3.copyWith(
                                  fontWeight: FontWeight.w500),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
