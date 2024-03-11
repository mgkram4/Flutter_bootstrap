import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:try_crud5/firebase_options.dart';
import 'package:try_crud5/pages/financial_tips_page.dart';
import 'package:try_crud5/pages/home_page.dart';
import 'package:try_crud5/pages/how_to_use.dart';
import 'package:try_crud5/pages/login_page.dart';
import 'package:try_crud5/pages/motivational_quote_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              body: HomePage(),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.blue, // Set the color here
                selectedItemColor:
                    Colors.white, // Set the selected icon and text color
                unselectedItemColor:
                    Colors.grey, // Set the unselected icon and text color
                selectedIconTheme: IconThemeData(
                    color: Colors.blue), // Set the selected icon color
                unselectedIconTheme: IconThemeData(
                    color: Colors.grey), // Set the unselected icon color
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'How To Use',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.line_weight),
                    label: 'Motivation',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.monetization_on),
                    label: 'Financial Advice',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Login',
                  ),
                ],
                onTap: (index) {
                  // Handle navigation when a bottom navigation bar item is tapped
                  if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HowToUsePage()),
                    );
                  } else if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MotivationalQuotesPage()),
                    );
                  } else if (index == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FinancialTipsPage()),
                    );
                  } else if (index == 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
