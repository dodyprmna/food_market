part of 'pages.dart';

class PaymentPage extends StatefulWidget {
  final Transaction transaction;
  final User user;
  final int quantity;

  PaymentPage({this.transaction, this.quantity, this.user});

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Payment',
      subtitle: 'You deserve better meal',
      onBackButtonPressed: () {
        Get.back();
      },
      backColor: 'FAFAFC'.toColor(),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(vertical: 16, horizontal: defaultMargin),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Odered',
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      widget.transaction.food.picturePath),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width -
                                  2 * defaultMargin -
                                  60 -
                                  12 -
                                  78,
                              child: Text(
                                widget.transaction.food.name,
                                style: blackFontStyle2,
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                              ),
                            ),
                            Text(
                              NumberFormat.currency(
                                      decimalDigits: 0,
                                      locale: 'id - ID',
                                      symbol: 'IDR ')
                                  .format(widget.transaction.total),
                              style: greyFontStyle,
                            )
                          ],
                        )
                      ],
                    ),
                    Text(widget.quantity.toString() + ' item',
                        style: greyFontStyle.copyWith(fontSize: 13)),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Detail Transaction',
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.food.name,
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        (NumberFormat.currency(
                                decimalDigits: 0,
                                locale: 'id - ID',
                                symbol: 'IDR ')
                            .format(widget.transaction.total)),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Driver',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        (NumberFormat.currency(
                                decimalDigits: 0,
                                locale: 'id - ID',
                                symbol: 'IDR ')
                            .format(50000)),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Tax 10%',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        (NumberFormat.currency(
                                decimalDigits: 0,
                                locale: 'id - ID',
                                symbol: 'IDR ')
                            .format(0.1 * widget.transaction.total)),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Total Price',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        (NumberFormat.currency(
                                decimalDigits: 0,
                                locale: 'id - ID',
                                symbol: 'IDR ')
                            .format(1.1 * widget.transaction.total + 50000)),
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500,
                            color: '1ABC9C'.toColor()),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding:
                EdgeInsets.symmetric(vertical: 16, horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Deliver to : ', style: blackFontStyle3),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Nama',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.user.name,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Phone No.',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.user.phoneNumber,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'Address',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.user.address,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'House No.',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.user.houseNumber,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        'City',
                        style: greyFontStyle,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.user.city,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: isLoading
                      ? Center(
                          child: loadingIndicator,
                        )
                      : RaisedButton(
                          onPressed: () async {
                            setState(() {
                              isLoading = true;
                            });

                            bool result = await context
                                .read<TransactionCubit>()
                                .submitTransaction(widget.transaction.copyWith(
                                    dateTime: DateTime.now(),
                                    total: (widget.transaction.total * 1.1)
                                            .toInt() +
                                        50000));
                            if (result == true) {
                              Get.to(SuccessOrderPage());
                            } else {
                              setState(() {
                                isLoading == false;
                              });
                              Get.snackbar("", "",
                                  backgroundColor: "D9435E".toColor(),
                                  icon: Icon(
                                    MdiIcons.closeCircleOutline,
                                    color: Colors.white,
                                  ),
                                  titleText: Text(
                                    "Transaction failed",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  messageText: Text('Please try again later',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600)));
                            }
                          },
                          elevation: 0,
                          color: mainColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text('Checkout Now',
                              style: blackFontStyle3.copyWith(
                                  fontWeight: FontWeight.w500)),
                        ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
