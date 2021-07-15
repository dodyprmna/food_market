part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Kezia Lizina',
    email: 'dodyprmna6@gmail.com',
    address: 'Simokerto 3 no. 29',
    houseNumber: '29A',
    phoneNumber: '085855761091',
    city: 'Surabaya',
    picturePath:
        'https://trenzindonesia.com/wp-content/uploads/2019/12/Kezia-SB.jpg');
