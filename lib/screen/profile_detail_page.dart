import 'package:flutter/material.dart';
import 'package:latihan_kuis_a/screen/food_list_page.dart';
import 'package:latihan_kuis_a/screen/login_page.dart';
import 'package:latihan_kuis_a/models/user_model.dart';

class ProfileDetailPage extends StatefulWidget {
  const ProfileDetailPage({super.key, required this.username});
  final String username;

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  User user = user1;

  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FoodListPage(username: widget.username),
        ),
      );
    }
  }

  Widget _logoutButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      ),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      child: Text('Logout', style: TextStyle(color: Colors.black)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'name: ${widget.username}\n'
            'Student id: ${user.nim}\n'
            'Hobi: ${user.hobby}',
            textAlign: TextAlign.center,
          ),
          _logoutButton(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
