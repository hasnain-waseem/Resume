import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  double mobileAppDevProgress = 0.8; 
  double fullStackDevProgress = 0.6; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experience'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(12.0),
        children: [
          _buildExperienceCard(
            title: 'Mobile App Developer (Flutter)',
            subtitle: 'September 2024 - Present',
            description: 'As a Mobile App Developer specializing in Flutter, I have experience building high-performance, cross-platform mobile applications for both iOS and Android.',
            progressValue: mobileAppDevProgress,
          ),
          _buildExperienceCard(
            title: 'Full Stack Developer',
            subtitle: 'May 2024 - November 2024',
            description: 'As a Full Stack Developer, I have a strong foundation in both front-end and back-end technologies.',
            progressValue: fullStackDevProgress,
          ),
        ],
      ),
    );
  }
  Widget _buildExperienceCard({
    required String title,
    required String subtitle,
    required String description,
    required double progressValue,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: Colors.black45,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 12),
            Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 16),
            LinearProgressIndicator(
              value: progressValue,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 8),
            Text(
              '${(progressValue * 100).toInt()}% Expertise',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
