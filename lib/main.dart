import 'package:flutter/material.dart';
import 'package:test_app/screens/gradient_page.dart';

import '../core/theme/app_theme.dart';
import '../models/mahasiswa.dart';
import '../screens/home_page.dart';
import '../screens/login_page.dart';
import '../screens/register_page.dart';
import '../screens/kelompok_page.dart';
import '../screens/profile_page.dart';
import '../screens/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PERTAMAKU',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: '/login',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final mahasiswa = ModalRoute.of(context)!.settings.arguments as Mahasiswa;

    final List<Widget> pages = [
      const HomePage(),
      const KelompokPage(),
      const ProfilePage(),
      const GradientPage(),
    ];

    return Scaffold(
      appBar: AppBar(title: Text(_appBarTitles[_selectedIndex])),
      body: IndexedStack(index: _selectedIndex, children: pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.group_outlined),
            selectedIcon: Icon(Icons.group_rounded),
            label: 'Kelompok',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person_rounded),
            label: 'Gradient',
          ),
        ],
      ),
    );
  }
}

const List<String> _appBarTitles = ['Home', 'Kelompok', 'Profile', 'Gradient'];
