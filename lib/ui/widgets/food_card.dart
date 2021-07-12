part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  FoodCard(this.food);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 210,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black12)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12),
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                    image: NetworkImage(food.picturePath), fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.only(left: 12),
            child: Text(
              food.name,
              style: blackFontStyle2,
              overflow: TextOverflow.clip,
              maxLines: 1,
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 12, top: 6),
              child: RatingStars(food.rate))
        ],
      ),
    );
  }
}
