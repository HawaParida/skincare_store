import 'package:flutter/material.dart';
import 'features/home/view/home.dart';
import 'features/explore/view/explore.dart';
import 'features/favorite/view/favorite.dart'; // Impor FavoritePage
import 'features/profile/profile.dart'; // Impor ProfilePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // List halaman yang akan ditampilkan pada setiap tab
  final List<Widget> _pages = [
    HomeScreen(),
    ExploreScreen(),
    FavoritePage(), // Menampilkan halaman Favorite saat tab Favorite dipilih
    const ProfilePage(), // Menampilkan halaman Profile saat tab Profile dipilih
  ];

  // List judul AppBar untuk setiap tab
  final List<String> _titles = [
    "GET YOUR SKIN\nHEALTHIER",
    "CATEGORIES",
    "My Favorites", // Judul untuk tab Favorite
    "Profile", // Judul untuk tab Profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: _selectedIndex != 0, // Hanya center jika bukan tab Home
        title: Text(
          _titles[_selectedIndex], // Judul AppBar sesuai tab yang dipilih
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: _selectedIndex == 0 ? TextAlign.left : TextAlign.center,
        ),
        actions: _selectedIndex == 0
            ? [
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // Aksi ketika tombol search ditekan
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // Aksi ketika tombol menu ditekan
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/img/Profile.jpg'), // Pastikan path ini sesuai
                    radius: 20,
                  ),
                ),
              ]
            : null, // Tidak ada actions untuk tab selain Home
      ),
      body: _pages[_selectedIndex], // Menampilkan halaman sesuai tab yang dipilih
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile', // Item Profile
          ),
        ],
      ),
    );
  }
}
