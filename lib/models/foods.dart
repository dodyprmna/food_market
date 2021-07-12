part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://inspirasipagi.id/wp-content/uploads/2018/07/activity_image.jpg",
      name: "Ayam Geprek Sambal Bawang",
      description: "Ayam geprek adalah menu ayam dengan sambal yang digeprek",
      ingredients: "Bawang Putih, Bawang Merah, Cabai",
      price: 15000,
      rate: 4.4),
  Food(
      id: 1,
      picturePath:
          "https://inspirasipagi.id/wp-content/uploads/2018/07/activity_image.jpg",
      name: "Ayam Geprek Sambal Matah",
      description: "Ayam geprek adalah menu ayam dengan sambal yang digeprek",
      ingredients: "Bawang Putih, Bawang Merah, Cabai",
      price: 15000,
      rate: 4.4),
  Food(
      id: 1,
      picturePath:
          "https://inspirasipagi.id/wp-content/uploads/2018/07/activity_image.jpg",
      name: "Ayam Geprek",
      description: "Ayam geprek adalah menu ayam dengan sambal yang digeprek",
      ingredients: "Bawang Putih, Bawang Merah, Cabai",
      price: 15000,
      rate: 4.4),
  Food(
      id: 1,
      picturePath:
          "https://inspirasipagi.id/wp-content/uploads/2018/07/activity_image.jpg",
      name: "Ayam Geprek Sambal Terasi",
      description: "Ayam geprek adalah menu ayam dengan sambal yang digeprek",
      ingredients: "Bawang Putih, Bawang Merah, Cabai",
      price: 15000,
      rate: 4.4),
];
