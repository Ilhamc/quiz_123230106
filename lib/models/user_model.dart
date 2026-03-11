class User {
  final String nama;
  final String username;
  final String password;
  final String nim;
  final String hobby;

  User({required this.nama, required this.username, required this.password, required this.nim, required this.hobby});
}

User user1 = User(nama: 'John Flutter', username: '106', password: '106', nim: '123230106', hobby:'Food munching');