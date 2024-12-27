import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
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
      body: ListView(
        padding: EdgeInsets.all(12.0),
        children: [
          _buildEducationCard(
            title: 'Bachelor of Science in Information Engineering Technology',
            subtitle: 'University of Lahore\nDuration: 2022 - 2027',
            color: Colors.teal.shade100,
          ),
          _buildEducationCard(
            title: 'Intermediate',
            subtitle: 'Crescent College, Shadman, Lahore\nDuration: 2020 - 2022',
            color: Colors.orange.shade100,
          ),
          _buildEducationCard(
            title: 'Matriculation',
            subtitle: 'Central Model Secondary High School\nDuration: 2018 - 2020',
            color: Colors.blue.shade100,
          ),
        ],
      ),
    );
  }

  Widget _buildEducationCard({required String title, required String subtitle, required Color color}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: color,
      shadowColor: Colors.black45,
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
