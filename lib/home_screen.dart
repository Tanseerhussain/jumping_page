import 'package:flutter/material.dart';
import 'package:jumping_page/screen_one.dart';
import 'package:jumping_page/screen_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // GlobalKey _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _key,
      appBar: AppBar(
        title: const Center(child: Text('Home Page',)),
        backgroundColor: Colors.amber,
      ),
      // navigation drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //drawer header
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=400'),
                ),
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                accountName: Text(
                  'Tanseer Hussain',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                accountEmail: Text(
                  'tanseerjaffary172@gmail.com',
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 49, 49, 49)),
                )),
            // Drewer Body
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home Page'),
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login Page'),
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenOne()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log out'),
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenTwo()));
              },
            ),
          ],
        ),
      ),
      // text button
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // next page movement code
        children: [
          // next page move 
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenOne()));
                  },
                  child: const Text('Next Page',style: TextStyle(decoration: TextDecoration.underline),))),
        ],
      ),
    );
  }
}
