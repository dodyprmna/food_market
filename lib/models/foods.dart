part of 'models.dart';

enum FoodType { new_food, popular, recomended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://inspirasipagi.id/wp-content/uploads/2018/07/activity_image.jpg",
      name: "Ayam Geprek",
      description: "Ayam geprek adalah menu ayam dengan sambal yang digeprek",
      ingredients: "Bawang Putih, Bawang Merah, Cabai",
      price: 15000,
      rate: 4.4,
      types: [FoodType.new_food, FoodType.recomended, FoodType.popular]),
  Food(
      id: 2,
      picturePath:
          "https://statics.indozone.news/content/2019/07/06/d5samQ/t_5d206d031e7f4_700.jpg",
      name: "Sate Padang",
      description: "Sate padang adalah sate khas kota padang",
      ingredients: "Bawang Putih, Bawang Merah, Cabai",
      price: 25000,
      rate: 4.4),
  Food(
      id: 3,
      picturePath:
          "https://assets.grab.com/wp-content/uploads/sites/9/2019/06/01020722/Sate-Klopo-Makanan-alt-2-700x700.png",
      name: "Sate Kelapa",
      description: "Sate kelapa dalah sate yang dibalut dengar parutan kelapa",
      ingredients: "Bawang Putih, Bawang Merah, Cabai",
      price: 15000,
      rate: 4.4,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath:
          "https://asset.kompas.com/crops/1n1phX0hDAebkJtxIBYn_lPcLKc=/0x0:1000x667/750x500/data/photo/2020/07/29/5f211052c70f7.jpg",
      name: "Nasi Goreng Kambing",
      description: "Nasing goreng kambing adalah nasi yang digoreng dengan toping irisan daging kambing",
      ingredients: "Bawang putih, kecap, irisan daging kambing, daun bawang",
      price: 15000,
      rate: 4.4,
      types: [FoodType.recomended]),
];
