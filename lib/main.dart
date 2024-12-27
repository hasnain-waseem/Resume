import 'package:flutter/material.dart';
import 'screens/profile_screen.dart' as profile;
import 'screens/skills_screen.dart' as skills;
import 'screens/education_screen.dart';
import 'screens/experience_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/personal_info_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hasnain's Resume",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _sections = [
    {
      'title': 'Profile',
      'icon': Icons.person,
      'screen': profile.ProfileScreen(),
      'color': Colors.teal
    },
    {
      'title': 'Skills',
      'icon': Icons.lightbulb,
      'screen': skills.SkillsScreen(),
      'color': Colors.orange
    },
    {
      'title': 'Education',
      'icon': Icons.school,
      'screen': EducationScreen(),
      'color': Colors.blue
    },
    {
      'title': 'Experience',
      'icon': Icons.work,
      'screen': ExperienceScreen(),
      'color': Colors.purple
    },
    {
      'title': 'Projects',
      'icon': Icons.code,
      'screen': ProjectsScreen(),
      'color': Colors.green
    },
    {
      'title': 'Personal Info',
      'icon': Icons.info,
      'screen': PersonalInfoScreen(),
      'color': Colors.red
    },
  ];

  // Footer Widget with Button
  Widget _buildFooter(BuildContext context) {
    return Container(
      color: Colors.teal,
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Text(
            '© 2024 Hasnain Waseem - All Rights Reserved',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Display a dialog with personal info or navigate to a new screen
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Personal Info'),
                    content: Text('Name: Hasnain Waseem\nEmail: hasnain@example.com\nPhone: +92 3096617582'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Show My Info'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.teal),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasnain's Resume"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items per row
                  mainAxisSpacing: 12, // Vertical space between items
                  crossAxisSpacing: 12, // Horizontal space between items
                ),
                itemCount: _sections.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => _sections[index]['screen'],
                        ),
                      );
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        color: _sections[index]['color'],
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            _sections[index]['color'].withOpacity(0.6),
                            _sections[index]['color']
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _sections[index]['icon'],
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(height: 8),
                          Text(
                            _sections[index]['title'],
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            _buildFooter(context), // Adding the footer here with the button
          ],
        ),
      ),
    );
  }
}
