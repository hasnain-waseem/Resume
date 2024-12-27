import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print('Profile Picture tapped!');
              },
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('img.jpg'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Hasnain Waseem",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'Independent Web and Mobile App Developer',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            _buildContactInfo(),
            SizedBox(height: 20),
            _buildSkillsSection(),
            SizedBox(height: 20),
            _buildHobbiesSection(),
          ],
        ),
      ),
    );
  }
Widget _buildContactInfo() {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(Icons.contact_mail, color: Colors.teal),
        title: Text('Email: hasnainwaseem206@gmail.com', style: TextStyle(fontWeight: FontWeight.normal),),
        subtitle: Text('Phone: +92 3096617582'),
        onTap: () {
        },
      ),
    );
  }
  Widget _buildSkillsSection() {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.code, color: Colors.teal),
            title: Text('Web Development'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.mobile_friendly, color: Colors.teal),
            title: Text('Mobile App Development (Flutter)'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.language, color: Colors.teal),
            title: Text('JavaScript, HTML, CSS'),
          ),
        ],
      ),
    );
  }
  Widget _buildHobbiesSection() {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Divider(),
          ListTile(
            leading: Icon(Icons.videogame_asset, color: Colors.teal),
            title: Text('Gaming (PUBG, Valorant)'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.sports_gymnastics, color: Colors.teal),
            title: Text('Gym, Armwerstling'),
          ),
        ],
      ),
    );
  }
}
